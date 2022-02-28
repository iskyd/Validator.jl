@safetestset "isEmpty" begin
    using validators

    @test validators.isEmpty("") === true
    @test validators.isEmpty(" ") === true
    @test validators.isEmpty("test") === false
end