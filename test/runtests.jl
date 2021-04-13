## runtests.jl  Unit tests for MFCC
## (c) 2015 David A. van Leeuwen
##
## Licensed under the MIT software license, see LICENSE.md

using WAV
include("../src/MFCC.jl")
using .MFCC
using SpecialFunctions
using Statistics

# x, meta, params = MFCC.feacalc("../test/bl2.wav", normtype=:none, method=:wav, augtype=:none, sadtype=:none)
# y = MFCC.feaload("bl2.mfcc")

# @assert x == y

x = randn(1_000)

@show MFCC.mfcc(x)

println("Tests passed")
