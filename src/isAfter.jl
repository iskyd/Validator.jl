export isAfter

using Dates

function isAfter(str::AbstractString, date::AbstractString=Dates.format(Dates.now(), "Y-mm-ddTHH:MM:SS"))::Bool
    comparison = Dates.DateTime(date)
    original = Dates.DateTime(str)

    return original > comparison
end