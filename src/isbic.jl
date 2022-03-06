export isbic

function isbic(str::AbstractString)::Bool
    isBICReg = r"^[A-Za-z]{6}[A-Za-z0-9]{2}([A-Za-z0-9]{3})?$"

    if length(str) < 6
        return false
    end

    if isiso31661alpha2(str[5:6]) === false 
        return false 
    end

    return contains(str, isBICReg)
end