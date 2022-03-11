export isjwt

function isjwt(str::AbstractString)::Bool
    splitted = split(str, ".")

    if length(splitted) > 3 || length(splitted) < 2
        return false
    end

    return all(Validator.isbase64.(splitted, true))
end