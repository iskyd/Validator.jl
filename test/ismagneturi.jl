@safetestset "ismagneturi" begin
    using Validator

    @test Validator.ismagneturi("magnet:?xt.1=urn:sha1:ABCDEFGHIJKLMNOPQRSTUVWXYZ123456&xt.2=urn:sha1:ABCDEFGHIJKLMNOPQRSTUVWXYZ123456") === true
    @test Validator.ismagneturi("magnet:?xt=urn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234&dn=helloword2000&tr=udp://helloworld:1337/announce") === true
    @test Validator.ismagneturi("magnet:?xt=urn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234&dn=foo") === true
    @test Validator.ismagneturi("magnet:?xt=urn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234&dn=&tr=&nonexisting=hello world") === true
    @test Validator.ismagneturi("magnet:?xt=urn:md5:ABCDEFGHIJKLMNOPQRSTUVWXYZ123456") === true
    @test Validator.ismagneturi("magnet:?xt=urn:tree:tiger:ABCDEFGHIJKLMNOPQRSTUVWXYZ123456") === true
    @test Validator.ismagneturi("magnet:?xt=urn:ed2k:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234") === true
    @test Validator.ismagneturi("magnet:?tr=udp://helloworld:1337/announce&xt=urn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234") === true
    @test Validator.ismagneturi("magnet:?xt=urn:btmh:1220caf1e1c30e81cb361b9ee167c4aa64228a7fa4fa9f6105232b28ad099f3a302e") === true

    @test Validator.ismagneturi(":?xt=urn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234") === false
    @test Validator.ismagneturi("xt=urn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234") === false
    @test Validator.ismagneturi("magneta:?xt=urn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234") === false
    @test Validator.ismagneturi("magnet:?xt=uarn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234") === false
    @test Validator.ismagneturi("magnet:?xt=urn:btihz") === false
    @test Validator.ismagneturi("magnet::?xt=urn:btih:UHWY2892JNEJ2GTEYOMDNU67E8ICGICYE92JDUGH") === false
    @test Validator.ismagneturi("magnet:?xt:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ") === false
    @test Validator.ismagneturi("magnet:?xt:urn:nonexisting:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234") === false
    @test Validator.ismagneturi("magnet:?xt.2=urn:btih:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234") === false
    @test Validator.ismagneturi("magnet:?xt=urn:ed2k:ABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890123456789ABCD") === false
    @test Validator.ismagneturi("magnet:?xt=urn:btmh:1120caf1e1c30e81cb361b9ee167c4aa64228a7fa4fa9f6105232b28ad099f3a302e") === false
    @test Validator.ismagneturi("magnet:?ttxt=urn:btmh:1220caf1e1c30e81cb361b9ee167c4aa64228a7fa4fa9f6105232b28ad099f3a302e") === false
end