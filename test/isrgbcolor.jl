@safetestset "isrgbcolor" begin
    using Validator

    @test Validator.isrgbcolor("rgb(0,0,0)") === true
    @test Validator.isrgbcolor("rgb(255,255,255)") === true
    @test Validator.isrgbcolor("rgba(0,0,0,0)") === true
    @test Validator.isrgbcolor("rgba(255,255,255,1)") === true
    @test Validator.isrgbcolor("rgba(255,255,255,.1)") === true
    @test Validator.isrgbcolor("rgba(255,255,255,0.1)") === true
    @test Validator.isrgbcolor("rgb(5%,5%,5%)") === true
    @test Validator.isrgbcolor("rgba(5%,5%,5%,.3)") === true

    @test Validator.isrgbcolor("rgb(0,0,0,)") === false
    @test Validator.isrgbcolor("rgb(0,0,)") === false
    @test Validator.isrgbcolor("rgb(0,0,256)") === false
    @test Validator.isrgbcolor("rgb()") === false
    @test Validator.isrgbcolor("rgba(0,0,0)") === false
    @test Validator.isrgbcolor("rgba(255,255,255,2)") === false
    @test Validator.isrgbcolor("rgba(255,255,255,.12)") === false
    @test Validator.isrgbcolor("rgba(255,255,256,0.1)") === false
    @test Validator.isrgbcolor("rgb(4,4,5%)") === false
    @test Validator.isrgbcolor("rgba(5%,5%,5%)") === false
    @test Validator.isrgbcolor("rgba(3,3,3%,.3)") === false
    @test Validator.isrgbcolor("rgb(101%,101%,101%)") === false
    @test Validator.isrgbcolor("rgba(3%,3%,101%,0.3)") === false


    @test Validator.isrgbcolor("rgb(5,5,5)", false) === true
    @test Validator.isrgbcolor("rgba(5,5,5,.3)", false) === true

    @test Validator.isrgbcolor("rgb(4,4,5%)", false) === false
    @test Validator.isrgbcolor("rgba(5%,5%,5%)", false) === false
end