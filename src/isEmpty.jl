export isEmpty

function isEmpty(str::String) 
    return length(strip(str)) === 0
end