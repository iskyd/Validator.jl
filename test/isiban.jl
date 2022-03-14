@safetestset "isiban" begin
    using Validator

    @test Validator.isiban("SC52BAHL01031234567890123456USD") === true
    @test Validator.isiban("LC14BOSL123456789012345678901234") === true
    @test Validator.isiban("MT31MALT01100000000000000000123") === true
    @test Validator.isiban("SV43ACAT00000000000000123123") === true
    @test Validator.isiban("EG800002000156789012345180002") === true
    @test Validator.isiban("BE71 0961 2345 6769") === true
    @test Validator.isiban("FR76 3000 6000 0112 3456 7890 189") === true
    @test Validator.isiban("DE91 1000 0000 0123 4567 89") === true
    @test Validator.isiban("GR96 0810 0010 0000 0123 4567 890") === true
    @test Validator.isiban("RO09 BCYP 0000 0012 3456 7890") === true
    @test Validator.isiban("SA44 2000 0001 2345 6789 1234") === true
    @test Validator.isiban("ES79 2100 0813 6101 2345 6789") === true
    @test Validator.isiban("CH56 0483 5012 3456 7800 9") === true
    @test Validator.isiban("GB98 MIDL 0700 9312 3456 78") === true
    @test Validator.isiban("IL170108000000012612345") === true
    @test Validator.isiban("IT60X0542811101000000123456") === true
    @test Validator.isiban("JO71CBJO0000000000001234567890") === true
    @test Validator.isiban("TR320010009999901234567890") === true
    @test Validator.isiban("BR1500000000000010932840814P2") === true
    @test Validator.isiban("LB92000700000000123123456123") === true
    @test Validator.isiban("IR200170000000339545727003") === true
    @test Validator.isiban("MZ97123412341234123412341") === true

    @test Validator.isiban("XX22YYY1234567890123") === false
    @test Validator.isiban("FR14 2004 1010 0505 0001 3") === false
    @test Validator.isiban("FR7630006000011234567890189@") === false
end