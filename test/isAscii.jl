@safetestset "isascii" begin
    using Validator

    @test Validator.isascii("foobar") === true
    @test Validator.isascii("0987654321") === true
    @test Validator.isascii("test@example.com") === true
    @test Validator.isascii("1234abcDEF") === true

    @test Validator.isascii("ｆｏｏbar") === false
    @test Validator.isascii("ｘｙｚ０９８") === false
    @test Validator.isascii("１２３456") === false
    @test Validator.isascii("ｶﾀｶﾅ") === false
end