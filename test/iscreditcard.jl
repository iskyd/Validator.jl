@safetestset "iscreditcard" begin
    using Validator

    @test Validator.iscreditcard("375556917985515") === true
    @test Validator.iscreditcard("36050234196908") === true
    @test Validator.iscreditcard("4716461583322103") === true
    @test Validator.iscreditcard("4716-2210-5188-5662") === true
    @test Validator.iscreditcard("4929 7226 5379 7141") === true
    @test Validator.iscreditcard("5398228707871527") === true
    @test Validator.iscreditcard("6283875070985593") === true
    @test Validator.iscreditcard("6263892624162870") === true
    @test Validator.iscreditcard("6234917882863855") === true
    @test Validator.iscreditcard("6234698580215388") === true
    @test Validator.iscreditcard("6226050967750613") === true
    @test Validator.iscreditcard("6246281879460688") === true
    @test Validator.iscreditcard("2222155765072228") === true
    @test Validator.iscreditcard("2225855203075256") === true
    @test Validator.iscreditcard("2720428011723762") === true
    @test Validator.iscreditcard("2718760626256570") === true
    @test Validator.iscreditcard("6765780016990268") === true
    @test Validator.iscreditcard("4716989580001715211") === true
    @test Validator.iscreditcard("8171999927660000") === true
    @test Validator.iscreditcard("8171999900000000021") === true

    @test Validator.iscreditcard("foo") === false
    @test Validator.iscreditcard("5398228707871528") === false
    @test Validator.iscreditcard("2718760626256571") === false
    @test Validator.iscreditcard("2721465526338453") === false
    @test Validator.iscreditcard("2220175103860763") === false
    @test Validator.iscreditcard("375556917985515999999993") === false
    @test Validator.iscreditcard("899999996234917882863855") === false
    @test Validator.iscreditcard("prefix6234917882863855") === false
    @test Validator.iscreditcard("623491788middle2863855") === false
    @test Validator.iscreditcard("6234917882863855suffix") === false
    @test Validator.iscreditcard("4716989580001715213") === false
end