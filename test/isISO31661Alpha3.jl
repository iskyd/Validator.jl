@safetestset "isISO31661Alpha3" begin
    using validator

    @test validator.isISO31661Alpha3("ABW") === true
    @test validator.isISO31661Alpha3("HND") === true
    @test validator.isISO31661Alpha3("KHM") === true
    @test validator.isISO31661Alpha3("RWA") === true
    @test validator.isISO31661Alpha3("rOU") === true

    @test validator.isISO31661Alpha3("") === false
    @test validator.isISO31661Alpha3("FR") === false
    @test validator.isISO31661Alpha3("fR") === false
    @test validator.isISO31661Alpha3("GB") === false
    @test validator.isISO31661Alpha3("PT") === false
    @test validator.isISO31661Alpha3("CM") === false
    @test validator.isISO31661Alpha3("JP") === false
    @test validator.isISO31661Alpha3("PM") === false
    @test validator.isISO31661Alpha3("ZW") === false
end