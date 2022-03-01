@safetestset "isBIC" begin
    using validators

    @test validators.isBIC("SBICKEN1345") === true
    @test validators.isBIC("SBICKEN1") === true
    @test validators.isBIC("SBICKENY") === true
    @test validators.isBIC("SBICKEN1YYP") === true

    @test validators.isBIC("SBIC23NXXX") === false
    @test validators.isBIC("S23CKENXXXX") === false
    @test validators.isBIC("SBICKENXX") === false
    @test validators.isBIC("SBICKENXX9") === false
    @test validators.isBIC("SBICKEN13458") === false
    @test validators.isBIC("SBICKEN") === false
end