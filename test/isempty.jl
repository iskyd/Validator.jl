@safetestset "isempty" begin
    using Validator

    # ignore_whitespace=false
    @test Validator.isempty("") === true
    @test Validator.isempty(" ") === false
    @test Validator.isempty("foo") === false

    # ignore_whitespace=true
    @test Validator.isempty("", true) === true
    @test Validator.isempty(" ", true) === true
    @test Validator.isempty("foo", true) === false
end