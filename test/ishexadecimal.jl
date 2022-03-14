@safetestset "ishexadecimal" begin
    using Validator

    @test Validator.ishexadecimal("deadBEEF") === true
    @test Validator.ishexadecimal("ff0044") === true
    @test Validator.ishexadecimal("0xff0044") === true
    @test Validator.ishexadecimal("0XfF0044") === true
    @test Validator.ishexadecimal("0x0123456789abcDEF") === true
    @test Validator.ishexadecimal("0X0123456789abcDEF") === true
    @test Validator.ishexadecimal("0hfedCBA9876543210") === true
    @test Validator.ishexadecimal("0HfedCBA9876543210") === true
    @test Validator.ishexadecimal("0123456789abcDEF") === true

    @test Validator.ishexadecimal("abcdefg") === false
    @test Validator.ishexadecimal("") === false
    @test Validator.ishexadecimal("..") === false
    @test Validator.ishexadecimal("0xa2h") === false
    @test Validator.ishexadecimal("0xa20x") === false
    @test Validator.ishexadecimal("0x0123456789abcDEFq  ") === false
    @test Validator.ishexadecimal("0hfedCBA9876543210q") === false
    @test Validator.ishexadecimal("01234q56789abcDEF") === false
end