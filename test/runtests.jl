cd(@__DIR__)

using Test, TestSetExtensions, SafeTestsets
using Validator

@testset ExtendedTestSet "validator tests" begin
  @includetests ARGS #[(endswith(t, ".jl") && t[1:end-3]) for t in ARGS]
end