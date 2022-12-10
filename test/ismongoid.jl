@safetestset "ismongoid" begin
    using Validator

    @test Validator.ismongoid("507f1f77bcf86cd799439011") === true

    @test Validator.ismongoid("507f1f77bcf86cd7994390") === false
    @test Validator.ismongoid("") === false
    @test Validator.ismongoid("507f1f77bcf86cd79943901z") === false
    @test Validator.ismongoid("507f1f77bcf86cd799439011 ") === false
end