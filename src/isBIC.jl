export isBIC

function isBIC(str::String)::Bool
    isBICReg = r"^[A-Za-z]{6}[A-Za-z0-9]{2}([A-Za-z0-9]{3})?$"

    if isISO31661Alpha2(str[5:6]) === false 
        return false 
    end

    return contains(str, isBICReg)
end