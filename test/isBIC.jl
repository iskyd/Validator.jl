@safetestset "isBIC" begin
    using validator

    @test validator.isBIC("SBICKEN1345") === true
    @test validator.isBIC("SBICKEN1") === true
    @test validator.isBIC("SBICKENY") === true
    @test validator.isBIC("SBICKEN1YYP") === true

    @test validator.isBIC("SBIC23NXXX") === false
    @test validator.isBIC("S23CKENXXXX") === false
    @test validator.isBIC("SBICKENXX") === false
    @test validator.isBIC("SBICKENXX9") === false
    @test validator.isBIC("SBICKEN13458") === false
    @test validator.isBIC("SBICKEN") === false
end