@safetestset "isAfter" begin
    using validator

    # date
    @test validator.isAfter("2022-02-28", "2022-02-27") === true
    @test validator.isAfter("2022-02-28", "2022-02-28") === false
    @test validator.isAfter("2022-02-28", "2022-03-01") === false

    # datetime
    @test validator.isAfter("2022-02-28T12:00:00", "2022-02-27T12:00:00") === true
    @test validator.isAfter("2022-02-28T12:00:00", "2022-02-28T09:00:00") === true
    @test validator.isAfter("2022-02-28T12:00:00", "2022-02-28T12:00:00") === false
    @test validator.isAfter("2022-02-28T12:00:00", "2022-03-01T12:00:00") === false

    # default
    @test validator.isAfter("2022-02-27") === false
    @test validator.isAfter("2050-02-28") === true
    @test validator.isAfter("2022-02-28T12:00:00") === false
    @test validator.isAfter("2050-02-28T09:00:00") === true
end