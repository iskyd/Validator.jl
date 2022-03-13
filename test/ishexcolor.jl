@safetestset "ishexcolor" begin
    using Validator

    @test Validator.ishexcolor("#ff0000ff") === true
    @test Validator.ishexcolor("#ff0034") === true
    @test Validator.ishexcolor("#CCCCCC") === true
    @test Validator.ishexcolor("0f38") === true
    @test Validator.ishexcolor("fff") === true
    @test Validator.ishexcolor("#f00") === true

    @test Validator.ishexcolor("#ff") === false
    @test Validator.ishexcolor("fff0a") === false
    @test Validator.ishexcolor("#ff12FG") === false
end