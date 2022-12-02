@safetestset "ismacaddress" begin
    using Validator

    @test Validator.ismacaddress("ab:ab:ab:ab:ab:ab") === true
    @test Validator.ismacaddress("FF:FF:FF:FF:FF:FF") === true
    @test Validator.ismacaddress("01:02:03:04:05:ab") === true
    @test Validator.ismacaddress("01:AB:03:04:05:06") === true
    @test Validator.ismacaddress("A9 C5 D4 9F EB D3") === true
    @test Validator.ismacaddress("01 02 03 04 05 ab") === true
    @test Validator.ismacaddress("01-02-03-04-05-ab") === true
    @test Validator.ismacaddress("0102.0304.05ab") === true
    @test Validator.ismacaddress("ab:ab:ab:ab:ab:ab:ab:ab") === true
    @test Validator.ismacaddress("FF:FF:FF:FF:FF:FF:FF:FF") === true
    @test Validator.ismacaddress("01:02:03:04:05:06:07:ab") === true
    @test Validator.ismacaddress("01:AB:03:04:05:06:07:08") === true
    @test Validator.ismacaddress("A9 C5 D4 9F EB D3 B6 65") === true
    @test Validator.ismacaddress("01 02 03 04 05 06 07 ab") === true
    @test Validator.ismacaddress("01-02-03-04-05-06-07-ab") === true
    @test Validator.ismacaddress("0102.0304.0506.07ab") === true


    @test Validator.ismacaddress("abc") === false
    @test Validator.ismacaddress("01:02:03:04:05") === false
    @test Validator.ismacaddress("01:02:03:04:05:z0") === false
    @test Validator.ismacaddress("01:02:03:04::ab") === false
    @test Validator.ismacaddress("1:2:3:4:5:6") === false
    @test Validator.ismacaddress("AB:CD:EF:GH:01:02") === false
    @test Validator.ismacaddress("A9C5 D4 9F EB D3") === false
    @test Validator.ismacaddress("01-02 03:04 05 ab") === false
    @test Validator.ismacaddress("0102.03:04.05ab") === false
    @test Validator.ismacaddress("900f/dffs/sdea") === false
    @test Validator.ismacaddress("01:02:03:04:05:06:07") === false
    @test Validator.ismacaddress("01:02:03:04:05:06:07:z0") === false
    @test Validator.ismacaddress("01:02:03:04:05:06::ab") === false
    @test Validator.ismacaddress("1:2:3:4:5:6:7:8") === false
    @test Validator.ismacaddress("AB:CD:EF:GH:01:02:03:04") === false
    @test Validator.ismacaddress("A9C5 D4 9F EB D3 B6 65") === false
    @test Validator.ismacaddress("01-02 03:04 05 06 07 ab") === false
    @test Validator.ismacaddress("0102.03:04.0506.07ab") === false
    @test Validator.ismacaddress("900f/dffs/sdea/54gh") === false


    # EUI 48
    @test Validator.ismacaddress("ab:ab:ab:ab:ab:ab", 48) === true
    @test Validator.ismacaddress("FF:FF:FF:FF:FF:FF", 48) === true
    @test Validator.ismacaddress("01:02:03:04:05:ab", 48) === true
    @test Validator.ismacaddress("01:AB:03:04:05:06", 48) === true
    @test Validator.ismacaddress("A9 C5 D4 9F EB D3", 48) === true
    @test Validator.ismacaddress("01 02 03 04 05 ab", 48) === true
    @test Validator.ismacaddress("01-02-03-04-05-ab", 48) === true
    @test Validator.ismacaddress("0102.0304.05ab", 48) === true

    @test Validator.ismacaddress("ab:ab:ab:ab:ab:ab:ab:ab", 48) === false
    @test Validator.ismacaddress("FF:FF:FF:FF:FF:FF:FF:FF", 48) === false
    @test Validator.ismacaddress("01:02:03:04:05:06:07:ab", 48) === false
    @test Validator.ismacaddress("01:AB:03:04:05:06:07:08", 48) === false
    @test Validator.ismacaddress("A9 C5 D4 9F EB D3 B6 65", 48) === false
    @test Validator.ismacaddress("01 02 03 04 05 06 07 ab", 48) === false
    @test Validator.ismacaddress("01-02-03-04-05-06-07-ab", 48) === false
    @test Validator.ismacaddress("0102.0304.0506.07ab", 48) === false

    # EUI 64

    @test Validator.ismacaddress("ab:ab:ab:ab:ab:ab:ab:ab", 64) === true
    @test Validator.ismacaddress("FF:FF:FF:FF:FF:FF:FF:FF", 64) === true
    @test Validator.ismacaddress("01:02:03:04:05:06:07:ab", 64) === true
    @test Validator.ismacaddress("01:AB:03:04:05:06:07:08", 64) === true
    @test Validator.ismacaddress("A9 C5 D4 9F EB D3 B6 65", 64) === true
    @test Validator.ismacaddress("01 02 03 04 05 06 07 ab", 64) === true
    @test Validator.ismacaddress("01-02-03-04-05-06-07-ab", 64) === true
    @test Validator.ismacaddress("0102.0304.0506.07ab", 64) === true

    @test Validator.ismacaddress("ab:ab:ab:ab:ab:ab", 64) === false
    @test Validator.ismacaddress("FF:FF:FF:FF:FF:FF", 64) === false
    @test Validator.ismacaddress("01:02:03:04:05:ab", 64) === false
    @test Validator.ismacaddress("01:AB:03:04:05:06", 64) === false
    @test Validator.ismacaddress("A9 C5 D4 9F EB D3", 64) === false
    @test Validator.ismacaddress("01 02 03 04 05 ab", 64) === false
    @test Validator.ismacaddress("01-02-03-04-05-ab", 64) === false
    @test Validator.ismacaddress("0102.0304.05ab", 64) === false

end