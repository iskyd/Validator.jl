export isrgbcolor

function isrgbcolor(str::AbstractString, include_percent::Bool=true)::Bool
    rgbReg = r"^rgb\((([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]),){2}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\)$"
    rgbaReg = r"^rgba\((([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]),){3}(0?\.\d|1(\.0)?|0(\.0)?)\)$"
    rgbPercentReg = r"^rgb\((([0-9]%|[1-9][0-9]%|100%),){2}([0-9]%|[1-9][0-9]%|100%)\)"
    rgbaPercentReg = r"^rgba\((([0-9]%|[1-9][0-9]%|100%),){3}(0?\.\d|1(\.0)?|0(\.0)?)\)"

    if include_percent
        return contains(str, rgbReg) || contains(str, rgbaReg) || contains(str, rgbPercentReg) || contains(str, rgbaPercentReg)
    else
        return contains(str, rgbReg) || contains(str, rgbaReg)
    end
end