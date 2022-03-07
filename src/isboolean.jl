export isboolean

function isboolean(str::AbstractString, loose=false::Bool)::Bool
    strictBooleans = ["true", "false", "1", "0"]
    looseBooleans = [strictBooleans..., "yes", "no"]

    return loose ? lowercase(str) in looseBooleans : str in strictBooleans
end