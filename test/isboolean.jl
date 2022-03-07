@safetestset "isboolean" begin
    using Validator

    # loose=false
    @test Validator.isboolean("true") === true
    @test Validator.isboolean("false") === true
    @test Validator.isboolean("0") === true
    @test Validator.isboolean("1") === true

    @test Validator.isboolean("1.0") === false
    @test Validator.isboolean("0.0") === false
    @test Validator.isboolean("true ") === false
    @test Validator.isboolean("False") === false
    @test Validator.isboolean("True") === false
    @test Validator.isboolean("yes") === false
    

    # loose=true
    @test Validator.isboolean("true", true) === true
    @test Validator.isboolean("True", true) === true
    @test Validator.isboolean("TRUE", true) === true
    @test Validator.isboolean("false", true) === true
    @test Validator.isboolean("False", true) === true
    @test Validator.isboolean("FALSE", true) === true
    @test Validator.isboolean("1", true) === true
    @test Validator.isboolean("0", true) === true
    @test Validator.isboolean("yes", true) === true
    @test Validator.isboolean("Yes", true) === true
    @test Validator.isboolean("YES", true) === true
    @test Validator.isboolean("no", true) === true
    @test Validator.isboolean("No", true) === true
    @test Validator.isboolean("NO", true) === true

    @test Validator.isboolean("1.0", true) === false
    @test Validator.isboolean("0.0", true) === false
    @test Validator.isboolean("true ", true) === false
    @test Validator.isboolean(" false", true) === false
end