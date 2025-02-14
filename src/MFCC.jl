## MFCC.jl
## (c) 2013-2015 David A. van Leeuwen, (c) 2005--2012 Dan Ellis

## Recoded from / inspired by melfcc from Dan Ellis's rastamat package.

module MFCC

export powspec, audspec, postaud, lifter
export mfcc, deltas, warp, sdc, znorm, znorm!, stmvn
export feasave, feaload, feasize
export feacalc
export Bark, Mel, HTKMel, FCMel

using DSP
using HDF5
using SpecialFunctions ## erfinv
using Statistics  

include("filterbank.jl")
include("rasta.jl")
include("mfccs.jl")
include("feacalc.jl")
include("io.jl")

end
