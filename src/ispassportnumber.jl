export ispassportnumber, passportRegex

const passportRegex = Dict(
    "AM" => r"^[A-Z]{2}\d{7}$", # ARMENIA
    "AR" => r"^[A-Z]{3}\d{6}$", # ARGENTINA
    "AT" => r"^[A-Z]\d{7}$", # AUSTRIA
    "AU" => r"^[A-Z]\d{7}$", # AUSTRALIA
    "BE" => r"^[A-Z]{2}\d{6}$", # BELGIUM
    "BG" => r"^\d{9}$", # BULGARIA
    "BR" => r"^[A-Z]{2}\d{6}$", # BRAZIL
    "BY" => r"^[A-Z]{2}\d{7}$", # BELARUS
    "CA" => r"^[A-Z]{2}\d{6}$", # CANADA
    "CH" => r"^[A-Z]\d{7}$", # SWITZERLAND
    "CN" => r"^G\d{8}$|^E(?![IO])[A-Z0-9]\d{7}$", # CHINA [G=Ordinary, E=Electronic] followed by 8-digits, or E followed by any UPPERCASE letter (except I and O) followed by 7 digits
    "CY" => r"^[A-Z](\d{6}|\d{8})$", # CYPRUS
    "CZ" => r"^\d{8}$", # CZECH REPUBLIC
    "DE" => r"^[CFGHJKLMNPRTVWXYZ0-9]{9}$", # GERMANY
    "DK" => r"^\d{9}$", # DENMARK
    "DZ" => r"^\d{9}$", # ALGERIA
    "EE" => r"^([A-Z]\d{7}|[A-Z]{2}\d{7})$", # ESTONIA (K followed by 7-digits), e-passports have 2 UPPERCASE followed by 7 digits
    "ES" => r"^[A-Z0-9]{2}([A-Z0-9]?)\d{6}$", # SPAIN
    "FI" => r"^[A-Z]{2}\d{7}$", # FINLAND
    "FR" => r"^\d{2}[A-Z]{2}\d{5}$", # FRANCE
    "GB" => r"^\d{9}$", # UNITED KINGDOM
    "GR" => r"^[A-Z]{2}\d{7}$", # GREECE
    "HR" => r"^\d{9}$", # CROATIA
    "HU" => r"^[A-Z]{2}(\d{6}|\d{7})$", # HUNGARY
    "IE" => r"^[A-Z0-9]{2}\d{7}$", # IRELAND
    "IN" => r"^[A-Z]{1}-?\d{7}$", # INDIA
    "ID" => r"^[A-C]\d{7}$", # INDONESIA
    "IR" => r"^[A-Z]\d{8}$", # IRAN
    "IS" => r"^(A)\d{7}$", # ICELAND
    "IT" => r"^[A-Z0-9]{2}\d{7}$", # ITALY
    "JP" => r"^[A-Z]{2}\d{7}$", # JAPAN
    "KR" => r"^[MS]\d{8}$", # SOUTH KOREA, REPUBLIC OF KOREA, [S=PS Passports, M=PM Passports]
    "LT" => r"^[A-Z0-9]{8}$", # LITHUANIA
    "LU" => r"^[A-Z0-9]{8}$", # LUXEMBURG
    "LV" => r"^[A-Z0-9]{2}\d{7}$", # LATVIA
    "LY" => r"^[A-Z0-9]{8}$", # LIBYA
    "MT" => r"^\d{7}$", # MALTA
    "MZ" => r"^([A-Z]{2}\d{7})|(\d{2}[A-Z]{2}\d{5})$", # MOZAMBIQUE
    "MY" => r"^[AHK]\d{8}$", # MALAYSIA
    "MX" => r"^\d{10,11}$", # MEXICO
    "NL" => r"^[A-Z]{2}[A-Z0-9]{6}\d$", # NETHERLANDS
    "PL" => r"^[A-Z]{2}\d{7}$", # POLAND
    "PT" => r"^[A-Z]\d{6}$", # PORTUGAL
    "RO" => r"^\d{8,9}$", # ROMANIA
    "RU" => r"^\d{9}$", # RUSSIAN FEDERATION
    "SE" => r"^\d{8}$", # SWEDEN
    "SL" => r"^(P)[A-Z]\d{7}$", # SLOVANIA
    "SK" => r"^[0-9A-Z]\d{7}$", # SLOVAKIA
    "TH" => r"^[A-Z]{1,2}\d{6,7}$", # THAILAND
    "TR" => r"^[A-Z]\d{8}$", # TURKEY
    "UA" => r"^[A-Z]{2}\d{6}$", # UKRAINE
    "US" => r"^\d{9}$", # UNITED STATES
)

function ispassportnumber(str::AbstractString, country_code::String)::Bool
    normalized = filter(c -> !isspace(c), str)
    return contains(uppercase(normalized), passportRegex[uppercase(country_code)])
end