@safetestset "isEmpty" begin
    using validators

    # ignore_whitespace=false
    @test validators.isEmpty("") === true
    @test validators.isEmpty(" ") === false
    @test validators.isEmpty("foo") === false

    # ignore_whitespace=true
    @test validators.isEmpty("", true) === true
    @test validators.isEmpty(" ", true) === true
    @test validators.isEmpty("foo", true) === false
end