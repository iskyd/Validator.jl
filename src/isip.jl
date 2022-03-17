using Printf

export isip

function isip(str::AbstractString, version::Int=0)::Bool
    ipv4SegmentFormat = "(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])"
    ipv4AddressFormat = @sprintf("(%s[.]){3}%s", ipv4SegmentFormat, ipv4SegmentFormat)
    ipv4AddressReg = Regex("^$(ipv4AddressFormat)\$")

    ipv6SegmentFormat = "(?:[0-9a-fA-F]{1,4})"
    ipv6AddressReg = Regex("^(" *
        "(?:$(ipv6SegmentFormat):){7}(?:$(ipv6SegmentFormat)|:)|" *
        "(?:$(ipv6SegmentFormat):){6}(?:$(ipv4AddressFormat)|:$(ipv6SegmentFormat)|:)|" *
        "(?:$(ipv6SegmentFormat):){5}(?::$(ipv4AddressFormat)|(:$(ipv6SegmentFormat)){1,2}|:)|" *
        "(?:$(ipv6SegmentFormat):){4}(?:(:$(ipv6SegmentFormat)){0,1}:$(ipv4AddressFormat)|(:$(ipv6SegmentFormat)){1,3}|:)|" *
        "(?:$(ipv6SegmentFormat):){3}(?:(:$(ipv6SegmentFormat)){0,2}:$(ipv4AddressFormat)|(:$(ipv6SegmentFormat)){1,4}|:)|" *
        "(?:$(ipv6SegmentFormat):){2}(?:(:$(ipv6SegmentFormat)){0,3}:$(ipv4AddressFormat)|(:$(ipv6SegmentFormat)){1,5}|:)|" *
        "(?:$(ipv6SegmentFormat):){1}(?:(:$(ipv6SegmentFormat)){0,4}:$(ipv4AddressFormat)|(:$(ipv6SegmentFormat)){1,6}|:)|" *
        "(?::((?::$(ipv6SegmentFormat)){0,5}:$(ipv4AddressFormat)|(?::$(ipv6SegmentFormat)){1,7}|:))" *
        ")(%[0-9a-zA-Z-.:]{1,})?\$")


    if version === 4
        if !contains(str, ipv4AddressReg)
            return false
        end

        return maximum(parse.(Int, split(str, '.'))) <= 255
    elseif version === 6
        return contains(str, ipv6AddressReg)
    else
        return isip(str, 4) || isip(str, 6)
    end
end