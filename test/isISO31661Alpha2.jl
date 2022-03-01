@safetestset "isISO31661Alpha2" begin
    using validator

    @test validator.isISO31661Alpha2("FR") === true
    @test validator.isISO31661Alpha2("fR") === true
    @test validator.isISO31661Alpha2("GB") === true
    @test validator.isISO31661Alpha2("PT") === true
    @test validator.isISO31661Alpha2("CM") === true
    @test validator.isISO31661Alpha2("JP") === true
    @test validator.isISO31661Alpha2("PM") === true
    @test validator.isISO31661Alpha2("ZW") === true
    @test validator.isISO31661Alpha2("MM") === true
    @test validator.isISO31661Alpha2("cc") === true
    @test validator.isISO31661Alpha2("GG") === true

    @test validator.isISO31661Alpha2("") === false
    @test validator.isISO31661Alpha2("FRA") === false
    @test validator.isISO31661Alpha2("AA") === false
    @test validator.isISO31661Alpha2("PI") === false
    @test validator.isISO31661Alpha2("RP") === false
    @test validator.isISO31661Alpha2("WV") === false
    @test validator.isISO31661Alpha2("WL") === false
    @test validator.isISO31661Alpha2("UK") === false
    @test validator.isISO31661Alpha2("ZZ") === false
end