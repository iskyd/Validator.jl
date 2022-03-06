export isbase32

function isbase32(str::AbstractString)::Bool
    base32Reg = r"^[A-Z2-7]+=*$"

    if length(str) % 8 === 0 && contains(str, base32Reg)
        return true
    end

    return false
end