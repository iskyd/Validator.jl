export isethereumaddress

function isethereumaddress(str::AbstractString)::Bool
    ethReg = r"^(0x)[0-9a-f]{40}$"i

    return contains(str, ethReg)
end