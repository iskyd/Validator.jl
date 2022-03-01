export isAscii

function isAscii(str::String)::Bool
    regex = r"^[\x00-\x7F]*$"

    return match(regex, str) === nothing ? false : true
end