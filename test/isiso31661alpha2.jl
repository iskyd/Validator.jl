@safetestset "isiso31661alpha2" begin
    using Validator

    @test Validator.isiso31661alpha2("FR") === true
    @test Validator.isiso31661alpha2("fR") === true
    @test Validator.isiso31661alpha2("GB") === true
    @test Validator.isiso31661alpha2("PT") === true
    @test Validator.isiso31661alpha2("CM") === true
    @test Validator.isiso31661alpha2("JP") === true
    @test Validator.isiso31661alpha2("PM") === true
    @test Validator.isiso31661alpha2("ZW") === true
    @test Validator.isiso31661alpha2("MM") === true
    @test Validator.isiso31661alpha2("cc") === true
    @test Validator.isiso31661alpha2("GG") === true

    @test Validator.isiso31661alpha2("") === false
    @test Validator.isiso31661alpha2("FRA") === false
    @test Validator.isiso31661alpha2("AA") === false
    @test Validator.isiso31661alpha2("PI") === false
    @test Validator.isiso31661alpha2("RP") === false
    @test Validator.isiso31661alpha2("WV") === false
    @test Validator.isiso31661alpha2("WL") === false
    @test Validator.isiso31661alpha2("UK") === false
    @test Validator.isiso31661alpha2("ZZ") === false
end