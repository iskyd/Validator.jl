export ismagneturi

function ismagneturi(str::AbstractString)
    if findfirst("magnet:?", str) !== 1:8 return false end

    return contains(str, r"(?:^magnet:\?|[^?&]&)xt(?:\.1)?=urn:(?:(?:aich|bitprint|btih|ed2k|ed2khash|kzhash|md5|sha1|tree:tiger):[a-z0-9]{32}(?:[a-z0-9]{8})?|btmh:1220[a-z0-9]{64})(?:$|&)"i)
end