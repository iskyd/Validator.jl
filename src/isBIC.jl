export isBIC

isBICReg = r"^[A-Za-z]{6}[A-Za-z0-9]{2}([A-Za-z0-9]{3})?$";

function isBIC(str::String)::Bool
    if isISO31661Alpha2(str[5:6]) === false 
        return false 
    end

    return match(isBICReg, str) === nothing ? false : true
end