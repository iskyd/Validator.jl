export isempty

function isempty(str::AbstractString, ignore_whitespace::Bool=false)::Bool 
    return (ignore_whitespace == true ? length(strip(str)) : length(str)) === 0
end