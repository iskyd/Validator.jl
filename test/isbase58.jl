@safetestset "isbase58" begin
    using Validator

    @test Validator.isbase58("BukQL") === true
    @test Validator.isbase58("3KMUV89zab") === true
    @test Validator.isbase58("91GHkLMNtyo98") === true
    @test Validator.isbase58("YyjKm3H") === true
    @test Validator.isbase58("Mkhss145TRFg") === true
    @test Validator.isbase58("7678765677") === true
    @test Validator.isbase58("abcodpq") === true
    @test Validator.isbase58("AAVHJKLPY") === true

    @test Validator.isbase58("0OPLJH") === false
    @test Validator.isbase58("IMKLP23") === false
    @test Validator.isbase58("KLMOmk986") === false
    @test Validator.isbase58("LL1l1985hG") === false
    @test Validator.isbase58("*MP9K") === false
    @test Validator.isbase58("Zm=8JBSWY3DP") === false
    @test Validator.isbase58(")()(=9292929MKL") === false
end