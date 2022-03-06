@safetestset "isbase64" begin
    using Validator

    # urlsafe = false
    @test Validator.isbase64("") === true
    @test Validator.isbase64("Zg==") === true
    @test Validator.isbase64("Zm8=") === true
    @test Validator.isbase64("Zm9v") === true
    @test Validator.isbase64("Zm9vYg==") === true
    @test Validator.isbase64("Zm9vYmE=") === true
    @test Validator.isbase64("Zm9vYmFy") === true
    @test Validator.isbase64("TG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4=") === true
    @test Validator.isbase64("Vml2YW11cyBmZXJtZW50dW0gc2VtcGVyIHBvcnRhLg==") === true
    @test Validator.isbase64("U3VzcGVuZGlzc2UgbGVjdHVzIGxlbw==") === true
    @test Validator.isbase64("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuMPNS1Ufof9EW/M98FNwUAKrwflsqVxaxQjBQnHQmiI7Vac40t8x7pIb8gLGV6wL7sBTJiPovJ0V7y7oc0YerhKh0Rm4skP2z/jHwwZICgGzBvA0rH8xlhUiTvcwDCJ0kc+fh35hNt8srZQM4619FTgB66Xmp4EtVyhpQV+t02g6NzK72oZI0vnAvqhpkxLeLiMCyrI416wHm5TkukhxQmcL2a6hNOyu0ixX/x2kSFXApEnVrJ+/IxGyfyw8kf4N2IZpW5nEP847lpfj0SZZFwrd1mnfnDbYohX2zRptLy2ZUn06Qo9pkG5ntvFEPo9bfZeULtjYzIl6K8gJ2uGZHQIDAQAB") === true

    @test Validator.isbase64("12345") === false
    @test Validator.isbase64("Vml2YW11cyBmZXJtZtesting123") === false
    @test Validator.isbase64("Zg=") === false
    @test Validator.isbase64("Z===") === false
    @test Validator.isbase64("Zm=8") === false
    @test Validator.isbase64("=m9vYg==") === false
    @test Validator.isbase64("Zm9vYmFy====") === false

    # urlsafe = true
    @test Validator.isbase64("", true) === true
    @test Validator.isbase64("bGFkaWVzIGFuZCBnZW50bGVtZW4sIHdlIGFyZSBmbG9hdGluZyBpbiBzcGFjZQ", true) === true
    @test Validator.isbase64("1234", true) === true
    @test Validator.isbase64("bXVtLW5ldmVyLXByb3Vk", true) === true
    @test Validator.isbase64("PDw_Pz8-Pg", true) === true
    @test Validator.isbase64("VGhpcyBpcyBhbiBlbmNvZGVkIHN0cmluZw", true) === true

    @test Validator.isbase64(" AA", true) === false
    @test Validator.isbase64("\tAA", true) === false
    @test Validator.isbase64("\rAA", true) === false
    @test Validator.isbase64("\nAA", true) === false
    @test Validator.isbase64("This+isa/bad+base64Url==", true) === false
    @test Validator.isbase64("0K3RgtC+INC30LDQutC+0LTQuNGA0L7QstCw0L3QvdCw0Y8g0YHRgtGA0L7QutCw", true) === false

end