export isAscii

function isAscii(str::String)::Bool
    isAsciiReg = r"^[\x00-\x7F]*$"

    return contains(str, isAsciiReg)
end