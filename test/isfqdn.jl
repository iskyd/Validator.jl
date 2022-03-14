@safetestset "isfqdn" begin
    using Validator

    @test Validator.isfqdn("domain.com") === true
    @test Validator.isfqdn("dom.plato") === true
    @test Validator.isfqdn("a.domain.co") === true
    @test Validator.isfqdn("foo--bar.com") === true
    @test Validator.isfqdn("xn--froschgrn-x9a.com") === true
    @test Validator.isfqdn("rebecca.blackfriday") === true
    @test Validator.isfqdn("1337.com") === true

    @test Validator.isfqdn("abc") === false
    @test Validator.isfqdn("256.0.0.0") === false
    @test Validator.isfqdn("_.com") === false
    @test Validator.isfqdn("*.some.com") === false
    @test Validator.isfqdn("s!ome.com") === false
    @test Validator.isfqdn("domain.com/") === false
    @test Validator.isfqdn("/more.com") === false
    @test Validator.isfqdn("domain.com�") === false
    @test Validator.isfqdn("domain.co\u00A0m") === false
    @test Validator.isfqdn("domain.co\u1680m") === false
    @test Validator.isfqdn("domain.co\u2006m") === false
    @test Validator.isfqdn("domain.co\u2028m") === false
    @test Validator.isfqdn("domain.co\u2029m") === false
    @test Validator.isfqdn("domain.co\u202Fm") === false
    @test Validator.isfqdn("domain.co\u205Fm") === false
    @test Validator.isfqdn("domain.co\u3000m") === false
    @test Validator.isfqdn("domain.com\uDC00") === false
    @test Validator.isfqdn("domain.co\uEFFFm") === false
    @test Validator.isfqdn("domain.co\uFDDAm") === false
    @test Validator.isfqdn("domain.co\uFFF4m") === false
    @test Validator.isfqdn("domain.com©") === false
    @test Validator.isfqdn("example.0") === false
    @test Validator.isfqdn("192.168.0.9999") === false
    @test Validator.isfqdn("192.168.0") === false


    # allowTrailingDot = true
    @test Validator.isfqdn("example.com.", true, false, true) === true

    @test Validator.isfqdn("example.0", true, false, true) === false
    @test Validator.isfqdn("192.168.0", true, false, true) === false
    @test Validator.isfqdn("192.168.0.9999", true, false, true) === false


    # requireTld = false
    @test Validator.isfqdn("example.0", false) === false
    @test Validator.isfqdn("192.168.0", false) === false
    @test Validator.isfqdn("192.168.0.9999", false) === false


    # requireTld = false, allowNumericTld = true
    @test Validator.isfqdn("example.0", false, false, false, true) === true
    @test Validator.isfqdn("192.168.0", false, false, false, true) === true
    @test Validator.isfqdn("192.168.0.9999", false, false, false, true) === true


    # allowWildcard = true
    @test Validator.isfqdn("*.example.com", true, false, false, false, true) === true
    @test Validator.isfqdn("*.shop.example.com", true, false, false, false, true) === true

end