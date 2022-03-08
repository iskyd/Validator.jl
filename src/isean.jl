export isean

function getweigth(len, index)
    if len === 14 || len === 8
        return index % 2 === 0 ? 1 : 3
    end

    return index % 2 === 0 ? 3 : 1
end

function isean(str::AbstractString)::Bool
    eanReg = r"^(\d{8}|\d{13}|\d{14})$"

    if !contains(str, eanReg)
        return false
    end

    checkDigit = parse(Int, str[end])
    checksum = sum(map(((index, value), ) -> value * getweigth(length(str), index) , enumerate(parse.(Int8, split(str[1:end-1], "")))))
    remainder = 10 - (checksum % 10)
    expectedCheckDigit = remainder < 10 ? remainder : 0

    return checkDigit === expectedCheckDigit
end