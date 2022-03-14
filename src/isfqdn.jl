export isfqdn

function checkparts(part::AbstractString, allowUnderscores::Bool=false)
    if length(part) > 63
        return false
    end

    if !contains(part, r"^[a-z_\u00a1-\uffff0-9-]+$"i)
        return false
    end

    # disallow full-width chars
    if contains(part, r"[\uff01-\uff5e]")
        return false
    end

    # disallow parts starting or ending with hyphen
    if contains(part, r"^-|-$")
        return false
    end

    if !allowUnderscores && contains(part, r"_")
        return false
    end

    return true
end

function isfqdn(str::AbstractString, requireTld::Bool=true, allowUnderscores::Bool=false, allowTrailingDot::Bool=false, allowNumericTld::Bool=false, allowWildcard::Bool=false)::Bool
    if allowTrailingDot && str[end] === '.'
        str = str[1:end-1]
    end

    if allowWildcard && findfirst("*.", str)[1] === 1
        str = str[3:end]
    end

    parts = split(str, ".")
    tld = parts[end]

    if requireTld
        if length(parts) < 2
            return false
        end

        tldReg = r"^([a-z\u00A1-\u00A8\u00AA-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]{2,}|xn[a-z0-9-]{2,})$"i
        if !contains(tld, tldReg)
            return false
        end

        # disallow whitespaces
        if contains(tld, r"\s"i)
            return false
        end
    end

    # reject numeric TLDs
    if !allowNumericTld && contains(tld, r"^\d+$")
        return false
    end

    return all(map(part -> checkparts(part, allowUnderscores), parts))
end