export isbase58

function isbase58(str::AbstractString)::Bool
    base58Reg = r"^[A-HJ-NP-Za-km-z1-9]*$"

    return contains(str, base58Reg)
end