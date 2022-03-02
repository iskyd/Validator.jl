@safetestset "isiso31661alpha3" begin
    using Validator

    @test Validator.isiso31661alpha3("ABW") === true
    @test Validator.isiso31661alpha3("HND") === true
    @test Validator.isiso31661alpha3("KHM") === true
    @test Validator.isiso31661alpha3("RWA") === true
    @test Validator.isiso31661alpha3("rOU") === true

    @test Validator.isiso31661alpha3("") === false
    @test Validator.isiso31661alpha3("FR") === false
    @test Validator.isiso31661alpha3("fR") === false
    @test Validator.isiso31661alpha3("GB") === false
    @test Validator.isiso31661alpha3("PT") === false
    @test Validator.isiso31661alpha3("CM") === false
    @test Validator.isiso31661alpha3("JP") === false
    @test Validator.isiso31661alpha3("PM") === false
    @test Validator.isiso31661alpha3("ZW") === false
end