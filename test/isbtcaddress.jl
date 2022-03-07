@safetestset "isbtcaddress" begin
    using Validator

    @test Validator.isbtcaddress("1MUz4VMYui5qY1mxUiG8BQ1Luv6tqkvaiL") === true
    @test Validator.isbtcaddress("3J98t1WpEZ73CNmQviecrnyiWrnqRhWNLy") === true
    @test Validator.isbtcaddress("bc1qar0srrr7xfkvy5l643lydnw9re59gtzzwf5mdq") === true
    @test Validator.isbtcaddress("14qViLJfdGaP4EeHnDyJbEGQysnCpwk3gd") === true
    @test Validator.isbtcaddress("35bSzXvRKLpHsHMrzb82f617cV4Srnt7hS") === true
    @test Validator.isbtcaddress("17VZNX1SN5NtKa8UQFxwQbFeFc3iqRYhemt") === true
    @test Validator.isbtcaddress("bc1qw508d6qejxtdg4y5r3zarvary0c5xw7kv8f3t4") === true

    @test Validator.isbtcaddress("4J98t1WpEZ73CNmQviecrnyiWrnqRhWNLy") === false
    @test Validator.isbtcaddress("0x56F0B8A998425c53c75C4A303D4eF987533c5597") === false
    @test Validator.isbtcaddress("pp8skudq3x5hzw8ew7vzsw8tn4k8wxsqsv0lt0mf3g") === false
    @test Validator.isbtcaddress("17VZNX1SN5NlKa8UQFxwQbFeFc3iqRYhem") === false
    @test Validator.isbtcaddress("BC1QW508D6QEJXTDG4Y5R3ZARVAYR0C5XW7KV8F3T4") === false
end