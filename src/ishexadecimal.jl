export ishexadecimal

function ishexadecimal(str::AbstractString)::Bool
    hexadecimalReg = r"^(0x|0h)?[0-9A-F]+$"i;

    return contains(str, hexadecimalReg)
end