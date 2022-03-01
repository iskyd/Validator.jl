@safetestset "isAScii" begin
    using validator

    @test validator.isAscii("foobar") === true
    @test validator.isAscii("0987654321") === true
    @test validator.isAscii("test@example.com") === true
    @test validator.isAscii("1234abcDEF") === true

    @test validator.isAscii("ｆｏｏbar") === false
    @test validator.isAscii("ｘｙｚ０９８") === false
    @test validator.isAscii("１２３456") === false
    @test validator.isAscii("ｶﾀｶﾅ") === false
end