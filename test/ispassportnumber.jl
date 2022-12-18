@safetestset "ispassportnumber" begin
    using Validator

    @test Validator.ispassportnumber("AF0549358", "AM") === true
    @test Validator.ispassportnumber("A1054935", "AM") === false

    @test Validator.ispassportnumber("C1253473", "ID") === true
    @test Validator.ispassportnumber("D39481728", "ID") === false

    @test Validator.ispassportnumber("AAC811035", "AR") === true
    @test Validator.ispassportnumber("A11811035", "AR") === false

    @test Validator.ispassportnumber("P 1630837", "AT") === true
    @test Validator.ispassportnumber("0 1630837", "AT") === false

    @test Validator.ispassportnumber("N0995852", "AU") === true
    @test Validator.ispassportnumber("1A012345", "AU") === false

    @test Validator.ispassportnumber("EM000000", "BE") === true
    @test Validator.ispassportnumber("00123456", "BE") === false

    @test Validator.ispassportnumber("346395366", "BG") === true
    @test Validator.ispassportnumber("ABC123456", "BG") === false

    @test Validator.ispassportnumber("FZ973689", "BR") === true
    @test Validator.ispassportnumber("ABX29332", "BR") === false

    @test Validator.ispassportnumber("MP3899901", "BY") === true
    @test Validator.ispassportnumber("345333454", "BY") === false

    @test Validator.ispassportnumber("GA302922", "CA") === true
    @test Validator.ispassportnumber("AB0123456", "CA") === false

    @test Validator.ispassportnumber("S1100409", "CH") === true
    @test Validator.ispassportnumber("AB123456", "CH") === false

    @test Validator.ispassportnumber("G25352389", "CN") === true
    @test Validator.ispassportnumber("K0123456", "CN") === false

    @test Validator.ispassportnumber("K00000413", "CY") === true
    @test Validator.ispassportnumber("K10100", "CY") === false

    @test Validator.ispassportnumber("99003853", "CZ") === true
    @test Validator.ispassportnumber("012345678", "CZ") === false

    @test Validator.ispassportnumber("C01X00T47", "DE") === true
    @test Validator.ispassportnumber("AS0123456", "DE") === false

    @test Validator.ispassportnumber("900010172", "DK") === true
    @test Validator.ispassportnumber("01234567", "DK") === false

    @test Validator.ispassportnumber("855609385", "DZ") === true
    @test Validator.ispassportnumber("AS0123456", "DZ") === false

    @test Validator.ispassportnumber("K4218285", "EE") === true
    @test Validator.ispassportnumber("K01234567", "EE") === false

    @test Validator.ispassportnumber("AF238143", "ES") === true
    @test Validator.ispassportnumber("AF01234567", "ES") === false

    @test Validator.ispassportnumber("XP8271602", "FI") === true
    @test Validator.ispassportnumber("A01234567", "FI") === false

    @test Validator.ispassportnumber("10CV28144", "FR") === true
    @test Validator.ispassportnumber("012345678", "FR") === false

    @test Validator.ispassportnumber("925076473", "GB") === true
    @test Validator.ispassportnumber("A012345678", "GB") === false

    @test Validator.ispassportnumber("AE0000005", "GR") === true
    @test Validator.ispassportnumber("A01234567", "GR") === false

    @test Validator.ispassportnumber("007007007", "HR") === true
    @test Validator.ispassportnumber("A01234567", "HR") === false

    @test Validator.ispassportnumber("ZA084505", "HU") === true
    @test Validator.ispassportnumber("A01234567", "HU") === false

    @test Validator.ispassportnumber("D23145890", "IE") === true
    @test Validator.ispassportnumber("XND012345", "IE") === false

    @test Validator.ispassportnumber("A-1234567", "IN") === true
    @test Validator.ispassportnumber("AB-1234567", "IN") === false

    @test Validator.ispassportnumber("J97634522", "IR") === true
    @test Validator.ispassportnumber("A0123456", "IR") === false

    @test Validator.ispassportnumber("A2040611", "IS") === true
    @test Validator.ispassportnumber("K0000000", "IS") === false

    @test Validator.ispassportnumber("YA8335453", "IT") === true
    @test Validator.ispassportnumber("01234567", "IT") === false

    @test Validator.ispassportnumber("NH1106002", "JP") === true
    @test Validator.ispassportnumber("X12345678", "JP") === false

    @test Validator.ispassportnumber("M35772699", "KR") === true
    @test Validator.ispassportnumber("X12345678", "KR") === false

    @test Validator.ispassportnumber("20200997", "LT") === true
    @test Validator.ispassportnumber("LB01234567", "LT") === false

    @test Validator.ispassportnumber("JCU9J4T2", "LU") === true
    @test Validator.ispassportnumber("JCU9J4T", "LU") === false

    @test Validator.ispassportnumber("LV9000339", "LV") === true
    @test Validator.ispassportnumber("LV01234567", "LV") === false

    @test Validator.ispassportnumber("P79JF34X", "LY") === true
    @test Validator.ispassportnumber("P79JF34", "LY") === false

    @test Validator.ispassportnumber("1026564", "MT") === true
    @test Validator.ispassportnumber("01234567", "MT") === false

    @test Validator.ispassportnumber("AB0808212", "MZ") === true
    @test Validator.ispassportnumber("1AB011241", "MZ") === false

    @test Validator.ispassportnumber("A00000000", "MY") === true
    @test Validator.ispassportnumber("A1234567", "MY") === false

    @test Validator.ispassportnumber("43986369222", "MX") === true
    @test Validator.ispassportnumber("ABC34567890", "MX") === false

    @test Validator.ispassportnumber("XTR110131", "NL") === true
    @test Validator.ispassportnumber("XTR11013R", "NL") === false

    @test Validator.ispassportnumber("ZS 0000177", "PL") === true
    @test Validator.ispassportnumber("A1 0000177", "PL") === false

    @test Validator.ispassportnumber("I700044", "PT") === true
    @test Validator.ispassportnumber("0700044", "PT") === false

    @test Validator.ispassportnumber("05485968", "RO") === true
    @test Validator.ispassportnumber("R05485968", "RO") === false

    @test Validator.ispassportnumber("2 32 636829", "RU") === true
    @test Validator.ispassportnumber("A 2R YU46J0", "RU") === false

    @test Validator.ispassportnumber("59000001", "SE") === true
    @test Validator.ispassportnumber("SE012345", "SE") === false

    @test Validator.ispassportnumber("PB0036440", "SL") === true
    @test Validator.ispassportnumber("SL0123456", "SL") === false

    @test Validator.ispassportnumber("P0000000", "SK") === true
    @test Validator.ispassportnumber("SK012345", "SK") === false

    @test Validator.ispassportnumber("A123456", "TH") === true
    @test Validator.ispassportnumber("123456", "TH") === false

    @test Validator.ispassportnumber("U 06764100", "TR") === true
    @test Validator.ispassportnumber("06764100U", "TR") === false

    @test Validator.ispassportnumber("EH345655", "UA") === true
    @test Validator.ispassportnumber("01234567", "UA") === false

    @test Validator.ispassportnumber("790369937", "US") === true
    @test Validator.ispassportnumber("US0123456", "US") === false
end