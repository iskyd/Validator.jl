export isAscii

isAsciiReg = r"^[\x00-\x7F]*$"

function isAscii(str::String)::Bool
    return match(isAsciiReg, str) === nothing ? false : true
end