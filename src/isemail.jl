using HTTP

export isemail

function isemail(str::AbstractString, ignoreMaxLength::Bool=false, allowIpDomain::Bool=false, domainBlacklist::Vector{String}=Vector{String}())::Bool 
    maxEmailLength = 254

    if !ignoreMaxLength && length(str) > maxEmailLength
        return false
    end

    parts = split(str, "@")
    domain = pop!(parts)

    if lowercase(domain) in domainBlacklist
        return false
    end

    user = join(parts, "@")

    if !ignoreMaxLength && (length(HTTP.escapeuri(user)) > 64 || length(HTTP.escapeuri(domain)) > 254)
        return false
    end

    if !isfqdn(domain, true)
        if !allowIpDomain
            return false
        end

        if !isip(domain)
            if domain[1] !== '[' || domain[end] !== ']'
                return false
            end

            noBracketsDomain = domain[2:end-1]
            if length(noBracketsDomain) === 0 || !isip(noBracketsDomain)
                return false
            end
        end
    end

    emailUserUtf8PartReg = r"^[a-z\d!#\$%&'\*\+\-\/=\?\^_`{\|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+$"i
    userParts = split(user, ".")

    if !all(map((part, ) -> contains(part, emailUserUtf8PartReg), userParts))
        return false
    end

    return true
end