@safetestset "isemail" begin
    using Validator

    @test Validator.isemail("foo@bar.com") === true
    @test Validator.isemail("x@x.au") === true
    @test Validator.isemail("foo@bar.com.au") === true
    @test Validator.isemail("foo+bar@bar.com") === true
    @test Validator.isemail("hans.m端ller@test.com") === true
    @test Validator.isemail("hans@m端ller.com") === true
    @test Validator.isemail("test|123@m端ller.com") === true
    @test Validator.isemail("test123+ext@gmail.com") === true
    @test Validator.isemail("some.name.midd.leNa.me.and.locality+extension@GoogleMail.com") === true
    @test Validator.isemail("test.1@gmail.com") === true
    @test Validator.isemail("test@1337.com") === true

    @test Validator.isemail("invalidemail@") === false
    @test Validator.isemail("invalid.com") === false
    @test Validator.isemail("@invalid.com") === false
    @test Validator.isemail("foo@bar.com.") === false
    @test Validator.isemail("somename@ｇｍａｉｌ.com") === false
    @test Validator.isemail("foo@bar.co.uk.") === false
    @test Validator.isemail("z@co.c") === false
    @test Validator.isemail("ｇｍａｉｌｇｍａｉｌｇｍａｉｌｇｍａｉｌｇｍａｉｌ@gmail.com") === false
    @test Validator.isemail("test1@invalid.co m") === false
    @test Validator.isemail("multiple..dots@stillinvalid.com") === false
    @test Validator.isemail("test123+invalid! sub_address@gmail.com") === false


    # Domain Blacklist
    @test Validator.isemail("email@foo.gmail.com", false, false, ["gmail.com", "foo.bar.com"]) === true

    @test Validator.isemail("foo+bar@gmail.com", false, false, ["gmail.com", "foo.bar.com"]) === false
    @test Validator.isemail("email@foo.bar.com", false, false, ["gmail.com", "foo.bar.com"]) === false


    # Ignore max length
    @test Validator.isemail("very-long-email-that-exceed-the-max-charactersvery-long-email-that-exceed-the-max-characters@bar.com") === false

    @test Validator.isemail("very-long-email-that-exceed-the-max-charactersvery-long-email-that-exceed-the-max-characters@bar.com", true) === true


    # Allow Ip Domain
    @test Validator.isemail("email@[123.123.123.123]", false, true) === true
    @test Validator.isemail("email@255.255.255.255", false, true) === true

    @test Validator.isemail("email@0.0.0.256", false, true) === false
    @test Validator.isemail("email@26.0.0.256", false, true) === false
    @test Validator.isemail("email@[266.266.266.266]", false, true) === false
end