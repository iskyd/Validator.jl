export isAfter

using Dates

function isAfter(str::String, date::String)::Bool
    comparison = Dates.DateTime(date)
    original = Dates.DateTime(str)

    return original > comparison
end