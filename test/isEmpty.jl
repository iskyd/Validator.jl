@safetestset "isEmpty" begin
    using validator

    # ignore_whitespace=false
    @test validator.isEmpty("") === true
    @test validator.isEmpty(" ") === false
    @test validator.isEmpty("foo") === false

    # ignore_whitespace=true
    @test validator.isEmpty("", true) === true
    @test validator.isEmpty(" ", true) === true
    @test validator.isEmpty("foo", true) === false
end