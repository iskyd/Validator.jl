@safetestset "isip" begin
    using Validator

    # IPV4
    @test Validator.isip("127.0.0.1", 4) === true
    @test Validator.isip("0.0.0.0", 4) === true
    @test Validator.isip("255.255.255.255", 4) === true
    @test Validator.isip("1.2.3.4", 4) === true
    @test Validator.isip("255.0.0.1", 4) === true
    @test Validator.isip("0.0.1.1", 4) === true

    @test Validator.isip("::1", 4) === false
    @test Validator.isip("2001:db8:0000:1:1:1:1:1", 4) === false
    @test Validator.isip("::ffff:127.0.0.1", 4) === false
    @test Validator.isip("137.132.10.01", 4) === false
    @test Validator.isip("0.256.0.256", 4) === false
    @test Validator.isip("255.256.255.256", 4) === false


    # IPV6
    @test Validator.isip("::1", 6) === true
    @test Validator.isip("2001:db8:0000:1:1:1:1:1", 6) === true
    @test Validator.isip("::ffff:127.0.0.1", 6) === true
    @test Validator.isip("fe80::1234%1", 6) === true
    @test Validator.isip("ff08::9abc%10", 6) === true
    @test Validator.isip("ff08::9abc%interface10", 6) === true
    @test Validator.isip("ff02::5678%pvc1.3", 6) === true

    @test Validator.isip("127.0.0.1", 6) === false
    @test Validator.isip("0.0.0.0'", 6) === false
    @test Validator.isip("255.255.255.255", 6) === false
    @test Validator.isip("1.2.3.4", 6) === false
    @test Validator.isip("::ffff:287.0.0.1", 6) === false
    @test Validator.isip("%", 6) === false
    @test Validator.isip("fe80::1234%", 6) === false
    @test Validator.isip("fe80::1234%1%3%4", 6) === false
    @test Validator.isip("fe80%fe80%", 6) === false


    # No type specified
    @test Validator.isip("127.0.0.1") === true
    @test Validator.isip("0.0.0.0") === true
    @test Validator.isip("255.255.255.255") === true
    @test Validator.isip("1.2.3.4") === true
    @test Validator.isip("::1") === true
    @test Validator.isip("2001:db8:0000:1:1:1:1:1") === true
    @test Validator.isip("2001:db8:3:4::192.0.2.33") === true
    @test Validator.isip("2001:41d0:2:a141::1") === true
    @test Validator.isip("::ffff:127.0.0.1") === true
    @test Validator.isip("::0000") === true
    @test Validator.isip("0000::") === true
    @test Validator.isip("1::") === true
    @test Validator.isip("1111:1:1:1:1:1:1:1") === true
    @test Validator.isip("fe80::a6db:30ff:fe98:e946") === true
    @test Validator.isip("::") === true
    @test Validator.isip("::8") === true
    @test Validator.isip("::ffff:127.0.0.1") === true
    @test Validator.isip("::ffff:255.255.255.255") === true
    @test Validator.isip("::ffff:0:255.255.255.255") === true
    @test Validator.isip("::2:3:4:5:6:7:8") === true
    @test Validator.isip("::255.255.255.255") === true
    @test Validator.isip("0:0:0:0:0:ffff:127.0.0.1") === true
    @test Validator.isip("1:2:3:4:5:6:7::") === true
    @test Validator.isip("1:2:3:4:5:6::8") === true
    @test Validator.isip("1::7:8") === true
    @test Validator.isip("1:2:3:4:5::7:8") === true
    @test Validator.isip("1:2:3:4:5::8") === true
    @test Validator.isip("1::6:7:8") === true
    @test Validator.isip("1:2:3:4::6:7:8") === true
    @test Validator.isip("1:2:3:4::8") === true
    @test Validator.isip("1::5:6:7:8") === true
    @test Validator.isip("1:2:3::5:6:7:8") === true
    @test Validator.isip("1:2:3::8") === true
    @test Validator.isip("1::4:5:6:7:8") === true
    @test Validator.isip("1:2::4:5:6:7:8") === true
    @test Validator.isip("1:2::8") === true
    @test Validator.isip("1::3:4:5:6:7:8") === true
    @test Validator.isip("1::8") === true
    @test Validator.isip("fe80::7:8%eth0") === true
    @test Validator.isip("fe80::7:8%1") === true
    @test Validator.isip("64:ff9b::192.0.2.33") === true
    @test Validator.isip("0:0:0:0:0:0:10.0.0.1") === true

    @test Validator.isip("abc") === false
    @test Validator.isip("256.0.0.0") === false
    @test Validator.isip("0.0.0.256") === false
    @test Validator.isip("26.0.0.256") === false
    @test Validator.isip("0200.200.200.200") === false
    @test Validator.isip("200.0200.200.200") === false
    @test Validator.isip("200.200.0200.200") === false
    @test Validator.isip("200.200.200.0200") === false
    @test Validator.isip("::banana") === false
    @test Validator.isip("banana::") === false
    @test Validator.isip("::1banana") === false
    @test Validator.isip("::1::") === false
    @test Validator.isip("1:") === false
    @test Validator.isip(":1") === false
    @test Validator.isip(":1:1:1::2") === false
    @test Validator.isip("1:1:1:1:1:1:1:1:1:1:1:1:1:1:1:1") === false
    @test Validator.isip("::11111") === false
    @test Validator.isip("11111:1:1:1:1:1:1:1") === false
    @test Validator.isip("2001:db8:0000:1:1:1:1::1") === false
    @test Validator.isip("0:0:0:0:0:0:ffff:127.0.0.1") === false
    @test Validator.isip("0:0:0:0:ffff:127.0.0.1") === false
end