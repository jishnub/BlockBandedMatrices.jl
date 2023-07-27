using BlockBandedMatrices
using LinearAlgebra
using Test

using Aqua
@testset "Project quality" begin
    Aqua.test_all(BlockBandedMatrices, ambiguities=false, piracy=false,
        # only test formatting on VERSION >= v1.7
        # https://github.com/JuliaTesting/Aqua.jl/issues/105#issuecomment-1551405866
        project_toml_formatting = VERSION >= v"1.9")
end

include("test_blockbanded.jl")
include("test_blockskyline.jl")
include("test_bandedblockbanded.jl")
include("test_broadcasting.jl")
include("test_linalg.jl")
include("test_misc.jl")
include("test_triblockbanded.jl")
include("test_adjtransblockbanded.jl")
include("test_blockskylineqr.jl")
