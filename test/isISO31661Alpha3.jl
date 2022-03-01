@safetestset "isISO31661Alpha3" begin
    using validators

    @test validators.isISO31661Alpha3("ABW") === true
    @test validators.isISO31661Alpha3("HND") === true
    @test validators.isISO31661Alpha3("KHM") === true
    @test validators.isISO31661Alpha3("RWA") === true
    @test validators.isISO31661Alpha3("rOU") === true

    @test validators.isISO31661Alpha3("") === false
    @test validators.isISO31661Alpha3("FR") === false
    @test validators.isISO31661Alpha3("fR") === false
    @test validators.isISO31661Alpha3("GB") === false
    @test validators.isISO31661Alpha3("PT") === false
    @test validators.isISO31661Alpha3("CM") === false
    @test validators.isISO31661Alpha3("JP") === false
    @test validators.isISO31661Alpha3("PM") === false
    @test validators.isISO31661Alpha3("ZW") === false
end