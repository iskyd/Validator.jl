export isuuid

REGEX = Dict(
    1 => r"^[0-9A-F]{8}-[0-9A-F]{4}-1[0-9A-F]{3}-[0-9A-F]{4}-[0-9A-F]{12}$"i,
    2 => r"^[0-9A-F]{8}-[0-9A-F]{4}-2[0-9A-F]{3}-[0-9A-F]{4}-[0-9A-F]{12}$"i,
    3 => r"^[0-9A-F]{8}-[0-9A-F]{4}-3[0-9A-F]{3}-[0-9A-F]{4}-[0-9A-F]{12}$"i,
    4 => r"^[0-9A-F]{8}-[0-9A-F]{4}-4[0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$"i,
    5 => r"^[0-9A-F]{8}-[0-9A-F]{4}-5[0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$"i
)

function isuuid(str::AbstractString, version::Int=0)::Bool
    if version == 0
        return any(contains(str, r) for r in values(REGEX))
    else
        return contains(str, REGEX[version])
    end
end