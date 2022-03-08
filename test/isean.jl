@safetestset "isean" begin
    using Validator

    @test Validator.isean("9421023610112") === true
    @test Validator.isean("1234567890128") === true
    @test Validator.isean("4012345678901") === true
    @test Validator.isean("9771234567003") === true
    @test Validator.isean("9783161484100") === true
    @test Validator.isean("73513537") === true
    @test Validator.isean("00012345600012") === true
    @test Validator.isean("10012345678902") === true
    @test Validator.isean("20012345678909") === true

    @test Validator.isean("5901234123451") === false
    @test Validator.isean("079777681629") === false
    @test Validator.isean("0705632085948") === false
end