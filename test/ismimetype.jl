@safetestset "ismimetype" begin
    using Validator

    @test Validator.ismimetype("application/json") === true
    @test Validator.ismimetype("application/xhtml+xml") === true
    @test Validator.ismimetype("audio/mp4") === true
    @test Validator.ismimetype("image/bmp") === true
    @test Validator.ismimetype("font/woff2") === true
    @test Validator.ismimetype("message/http") === true
    @test Validator.ismimetype("model/vnd.gtw") === true
    @test Validator.ismimetype("multipart/form-data") === true
    @test Validator.ismimetype("multipart/form-data; boundary=something") === true
    @test Validator.ismimetype("multipart/form-data; charset=utf-8; boundary=something") === true
    @test Validator.ismimetype("multipart/form-data; boundary=something; charset=utf-8") === true
    @test Validator.ismimetype("multipart/form-data; boundary=something; charset=\"utf-8\"") === true
    @test Validator.ismimetype("multipart/form-data; boundary=\"something\"; charset=utf-8") === true
    @test Validator.ismimetype("multipart/form-data; boundary=\"something\"; charset=\"utf-8\"") === true
    @test Validator.ismimetype("text/css") === true
    @test Validator.ismimetype("text/plain; charset=utf8") === true
    @test Validator.ismimetype("Text/HTML;Charset=\"utf-8\"") === true
    @test Validator.ismimetype("text/html;charset=UTF-8") === true
    @test Validator.ismimetype("Text/html;charset=UTF-8") === true
    @test Validator.ismimetype("text/html; charset=us-ascii") === true
    @test Validator.ismimetype("text/html; charset=us-ascii (Plain text)") === true
    @test Validator.ismimetype("text/html; charset=\"us-ascii\"") === true
    @test Validator.ismimetype("video/mp4") === true

    @test Validator.ismimetype("") === false
    @test Validator.ismimetype(" ") === false
    @test Validator.ismimetype("/") === false
    @test Validator.ismimetype("f/b") === false
    @test Validator.ismimetype("application") === false
    @test Validator.ismimetype("application\\json") === false
    @test Validator.ismimetype("application/json/text") === false
    @test Validator.ismimetype("application/json; charset=utf-8") === false
    @test Validator.ismimetype("audio/mp4; charset=utf-8") === false
    @test Validator.ismimetype("image/bmp; charset=utf-8") === false
    @test Validator.ismimetype("font/woff2; charset=utf-8") === false
    @test Validator.ismimetype("message/http; charset=utf-8") === false
    @test Validator.ismimetype("model/vnd.gtw; charset=utf-8") === false
    @test Validator.ismimetype("video/mp4; charset=utf-8") === false
end