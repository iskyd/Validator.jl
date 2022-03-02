export isAscii

function isAscii(str::AbstractString)::Bool
    isAsciiReg = r"^[\x00-\x7F]*$"

    return contains(str, isAsciiReg)
end