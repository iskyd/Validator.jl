@safetestset "isbic" begin
    using Validator

    @test Validator.isbic("SBICKEN1345") === true
    @test Validator.isbic("SBICKEN1") === true
    @test Validator.isbic("SBICKENY") === true
    @test Validator.isbic("SBICKEN1YYP") === true

    @test Validator.isbic("SBIC23NXXX") === false
    @test Validator.isbic("S23CKENXXXX") === false
    @test Validator.isbic("SBICKENXX") === false
    @test Validator.isbic("SBICKENXX9") === false
    @test Validator.isbic("SBICKEN13458") === false
    @test Validator.isbic("SBICKEN") === false
    @test Validator.isbic("SBI") === false
end