@safetestset "isAScii" begin
    using validators

    @test validators.isAscii("foobar") === true
    @test validators.isAscii("0987654321") === true
    @test validators.isAscii("test@example.com") === true
    @test validators.isAscii("1234abcDEF") === true

    @test validators.isAscii("ｆｏｏbar") === false
    @test validators.isAscii("ｘｙｚ０９８") === false
    @test validators.isAscii("１２３456") === false
    @test validators.isAscii("ｶﾀｶﾅ") === false
end