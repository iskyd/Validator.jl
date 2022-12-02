export ismd5

function ismd5(str::AbstractString)
    return contains(str, r"^[a-f0-9]{32}$")
end