@safetestset "isuuid" begin
    using Validator

    @test Validator.isuuid("A987FBC9-4BED-3078-CF07-9141BA07C9F3") === true
    @test Validator.isuuid("A987FBC9-4BED-4078-8F07-9141BA07C9F3") === true
    @test Validator.isuuid("A987FBC9-4BED-5078-AF07-9141BA07C9F3") === true

    @test Validator.isuuid("") === false
    @test Validator.isuuid("xxxA987FBC9-4BED-3078-CF07-9141BA07C9F3") === false
    @test Validator.isuuid("A987FBC9-4BED-3078-CF07-9141BA07C9F3xxx") === false
    @test Validator.isuuid("A987FBC94BED3078CF079141BA07C9F3") === false
    @test Validator.isuuid("934859") === false
    @test Validator.isuuid("987FBC9-4BED-3078-CF07A-9141BA07C9F3") === false
    @test Validator.isuuid("AAAAAAAA-1111-1111-AAAG-111111111111") === false

    @test Validator.isuuid("E034B584-7D89-11E9-9669-1AECF481A97B", 1) === true

    @test Validator.isuuid("xxxA987FBC9-4BED-3078-CF07-9141BA07C9F3", 1) === false
    @test Validator.isuuid("AAAAAAAA-1111-2222-AAAG", 1) === false
    @test Validator.isuuid("AAAAAAAA-1111-2222-AAAG-111111111111", 1) === false
    @test Validator.isuuid("A987FBC9-4BED-4078-8F07-9141BA07C9F3", 1) === false
    @test Validator.isuuid("A987FBC9-4BED-5078-AF07-9141BA07C9F3", 1) === false

    @test Validator.isuuid("A987FBC9-4BED-2078-CF07-9141BA07C9F3", 2) === true

    @test Validator.isuuid("", 2) === false
    @test Validator.isuuid("xxxA987FBC9-4BED-3078-CF07-9141BA07C9F3", 2) === false
    @test Validator.isuuid("11111", 2) === false
    @test Validator.isuuid("AAAAAAAA-1111-1111-AAAG-111111111111", 2) === false
    @test Validator.isuuid("A987FBC9-4BED-4078-8F07-9141BA07C9F3", 2) === false
    @test Validator.isuuid("A987FBC9-4BED-5078-AF07-9141BA07C9F3", 2) === false

    @test Validator.isuuid("A987FBC9-4BED-3078-CF07-9141BA07C9F3", 3) === true

    @test Validator.isuuid("", 3) === false
    @test Validator.isuuid("xxxA987FBC9-4BED-3078-CF07-9141BA07C9F3", 3) === false
    @test Validator.isuuid("934859", 3) === false
    @test Validator.isuuid("AAAAAAAA-1111-1111-AAAG-111111111111", 3) === false
    @test Validator.isuuid("A987FBC9-4BED-4078-8F07-9141BA07C9F3", 3) === false
    @test Validator.isuuid("A987FBC9-4BED-5078-AF07-9141BA07C9F3", 3) === false


    @test Validator.isuuid("713ae7e3-cb32-45f9-adcb-7c4fa86b90c1", 4) === true
    @test Validator.isuuid("625e63f3-58f5-40b7-83a1-a72ad31acffb", 4) === true
    @test Validator.isuuid("57b73598-8764-4ad0-a76a-679bb6640eb1", 4) === true
    @test Validator.isuuid("9c858901-8a57-4791-81fe-4c455b099bc9", 4) === true

    @test Validator.isuuid("", 4) === false
    @test Validator.isuuid("xxxA987FBC9-4BED-3078-CF07-9141BA07C9F3", 4) === false
    @test Validator.isuuid("934859", 4) === false
    @test Validator.isuuid("AAAAAAAA-1111-1111-AAAG-111111111111", 4) === false
    @test Validator.isuuid("A987FBC9-4BED-5078-AF07-9141BA07C9F3", 4) === false
    @test Validator.isuuid("A987FBC9-4BED-3078-CF07-9141BA07C9F3", 4) === false

    @test Validator.isuuid("987FBC97-4BED-5078-AF07-9141BA07C9F3", 5) === true
    @test Validator.isuuid("987FBC97-4BED-5078-BF07-9141BA07C9F3", 5) === true
    @test Validator.isuuid("987FBC97-4BED-5078-8F07-9141BA07C9F3", 5) === true
    @test Validator.isuuid("987FBC97-4BED-5078-9F07-9141BA07C9F3", 5) === true

    @test Validator.isuuid("xxxA987FBC9-4BED-3078-CF07-9141BA07C9F3", 5) === false
    @test Validator.isuuid("934859", 5) === false
    @test Validator.isuuid("AAAAAAAA-1111-1111-AAAG-111111111111", 5) === false
    @test Validator.isuuid("9c858901-8a57-4791-81fe-4c455b099bc9", 5) === false
    @test Validator.isuuid("A987FBC9-4BED-3078-CF07-9141BA07C9F3", 5) === false
end