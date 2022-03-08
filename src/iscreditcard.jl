export iscreditcard

function iscreditcard(str::AbstractString)::Bool
    creditCardReg = r"^(?:4[0-9]{12}(?:[0-9]{3,6})?|5[1-5][0-9]{14}|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}|6(?:011|5[0-9][0-9])[0-9]{12,15}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11}|6[27][0-9]{14}|^(81[0-9]{14,17}))$"

    sanitized = replace(str, r"[- ]+" => "")
    if !contains(sanitized, creditCardReg)
        return false
    end

    sum = 0
    shouldDouble = false
    for i in reverse(1:length(sanitized))
        digit = parse(Int8, sanitized[i])
        if shouldDouble
            digit *= 2
            if digit > 9
                sum += ((digit % 10) + 1)
            else
                sum += digit
            end
        else
            sum += digit
        end

        shouldDouble = !shouldDouble
    end

    return (sum % 10) === 0 ? true : false
end