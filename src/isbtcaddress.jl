export isbtcaddress

function isbtcaddress(str::AbstractString)::Bool
    bench32Reg = r"^(bc1)[a-z0-9]{25,39}$"
    base58Reg = r"^(1|3)[A-HJ-NP-Za-km-z1-9]{25,39}$"

    if startswith(str, "bc1")
        return contains(str, bench32Reg)
    end

    return contains(str, base58Reg)
end