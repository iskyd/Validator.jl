@safetestset "isempty" begin
    using Validator

    # ignore_whitespace=false
    @test Validator.isemptystr("") === true
    @test Validator.isemptystr(" ") === false
    @test Validator.isemptystr("foo") === false

    # ignore_whitespace=true
    @test Validator.isemptystr("", true) === true
    @test Validator.isemptystr(" ", true) === true
    @test Validator.isemptystr("foo", true) === false
end