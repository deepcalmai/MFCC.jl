using BenchmarkTools
include("../src/MFCC.jl")
using .MFCC

# @benchmark MFCC.mfcc(x) setup=(x=randn(10_000))
# 800 us

@benchmark MFCC.powspec(x) setup=(x=randn(10_000))
# 400 us

# @benchmark MFCC.audspec(x) setup=(x=MFCC.powspec(randn(10_000)))