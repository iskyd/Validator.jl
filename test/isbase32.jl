@safetestset "isbase32" begin
    using Validator

    @test Validator.isbase32("ZG======") === true
    @test Validator.isbase32("JBSQ====") === true
    @test Validator.isbase32("JBSWY===") === true
    @test Validator.isbase32("JBSWY3A=") === true
    @test Validator.isbase32("JBSWY3DP") === true
    @test Validator.isbase32("JBSWY3DPEA======") === true
    @test Validator.isbase32("K5SWYY3PNVSSA5DPEBXG6ZA=") === true
    @test Validator.isbase32("K5SWYY3PNVSSA5DPEBXG6===") === true

    @test Validator.isbase32("12345") === false
    @test Validator.isbase32("") === false
    @test Validator.isbase32("JBSWY3DPtesting123") === false
    @test Validator.isbase32("ZG=====") === false
    @test Validator.isbase32("Z======") === false
    @test Validator.isbase32("Zm=8JBSWY3DP") === false
    @test Validator.isbase32("=m9vYg=") === false
    @test Validator.isbase32("Zm9vYm/y====") === false
end