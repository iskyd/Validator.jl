@safetestset "ismd5" begin
    using Validator

    @test Validator.ismd5("d94f3f016ae679c3008de268209132f2") === true
    @test Validator.ismd5("751adbc511ccbe8edf23d486fa4581cd") === true
    @test Validator.ismd5("88dae00e614d8f24cfd5a8b3f8002e93") === true
    @test Validator.ismd5("0bf1c35032a71a14c2f719e5a14c1e96") === true

    @test Validator.ismd5("KYT0bf1c35032a71a14c2f719e5a14c1") === false
    @test Validator.ismd5("q94375dj93458w34") === false
    @test Validator.ismd5("39485729348") === false
    @test Validator.ismd5("%&FHKJFvk") === false
end