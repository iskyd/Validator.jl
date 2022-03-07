@safetestset "isbefore" begin
    using Validator

    # date
    @test Validator.isbefore("2022-02-28", "2022-02-27") === false
    @test Validator.isbefore("2022-02-28", "2022-02-28") === false
    @test Validator.isbefore("2022-02-28", "2022-03-01") === true

    # datetime
    @test Validator.isbefore("2022-02-28T12:00:00", "2022-02-27T12:00:00") === false
    @test Validator.isbefore("2022-02-28T12:00:00", "2022-02-28T09:00:00") === false
    @test Validator.isbefore("2022-02-28T12:00:00", "2022-02-28T12:00:00") === false
    @test Validator.isbefore("2022-02-28T12:00:00", "2022-03-01T12:00:00") === true

    # default
    @test Validator.isbefore("2022-02-27") === true
    @test Validator.isbefore("2050-02-28") === false
    @test Validator.isbefore("2022-02-28T12:00:00") === true
    @test Validator.isbefore("2050-02-28T09:00:00") === false
end