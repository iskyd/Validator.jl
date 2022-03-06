export isbase64

function isbase64(str::AbstractString, urlsafe::Bool=false)::Bool
    notBase64 = r"[^A-Z0-9+\/=]"i
    urlSafeBase64 = r"^[A-Z0-9_\-]*$"i

    if str === ""
        return true
    end

    if urlsafe
        return contains(str, urlSafeBase64)
    end

    if length(str) % 4 !== 0 || contains(str, notBase64)
        return false
    end

    firstPadding = findfirst("=", str)
    if firstPadding !== nothing 
        firstPadding = first(firstPadding)
    end

    return firstPadding === nothing || 
        firstPadding === length(str) ||
        (firstPadding === length(str) - 1 && str[end] === '=')
end