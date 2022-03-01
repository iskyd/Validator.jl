@safetestset "isISO31661Alpha2" begin
    using validators

    @test validators.isISO31661Alpha2("FR") === true
    @test validators.isISO31661Alpha2("fR") === true
    @test validators.isISO31661Alpha2("GB") === true
    @test validators.isISO31661Alpha2("PT") === true
    @test validators.isISO31661Alpha2("CM") === true
    @test validators.isISO31661Alpha2("JP") === true
    @test validators.isISO31661Alpha2("PM") === true
    @test validators.isISO31661Alpha2("ZW") === true
    @test validators.isISO31661Alpha2("MM") === true
    @test validators.isISO31661Alpha2("cc") === true
    @test validators.isISO31661Alpha2("GG") === true

    @test validators.isISO31661Alpha2("") === false
    @test validators.isISO31661Alpha2("FRA") === false
    @test validators.isISO31661Alpha2("AA") === false
    @test validators.isISO31661Alpha2("PI") === false
    @test validators.isISO31661Alpha2("RP") === false
    @test validators.isISO31661Alpha2("WV") === false
    @test validators.isISO31661Alpha2("WL") === false
    @test validators.isISO31661Alpha2("UK") === false
    @test validators.isISO31661Alpha2("ZZ") === false
end