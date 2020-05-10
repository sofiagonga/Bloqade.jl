using RydbergEmulator
using Test
using Random
Random.seed!(42)

@testset "Yao interfaces" begin
    include("register.jl")
    include("measure.jl")
end

@testset "QAOA emulator" begin
    include("qaoa.jl")
end

@testset "qaoa_mis" begin
    include("qaoa_mis.jl")
end

@testset "unit disk" begin
    include("unit_disk.jl")
end

@testset "hamiltonian" begin
    include("hamiltonian.jl")
end
