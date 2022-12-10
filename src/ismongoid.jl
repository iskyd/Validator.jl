using Validator

export ismongoid

function ismongoid(str::AbstractString)::Bool
    return Validator.ishexadecimal(str) && length(str) == 24
end