export ishexcolor

function ishexcolor(str::AbstractString)::Bool
    hexcolorReg = r"^#?([0-9A-F]{3}|[0-9A-F]{4}|[0-9A-F]{6}|[0-9A-F]{8})$"i

    return contains(str, hexcolorReg)
end