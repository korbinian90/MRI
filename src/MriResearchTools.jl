module MriResearchTools

using FFTW
using Interpolations
using NIfTI
using ROMEO
using Statistics
using DataStructures
using ImageMorphology
using PaddedViews

include("utility.jl")
include("smoothing.jl")
include("laplacianunwrapping.jl")
include("intensitycorrection.jl")
include("VSMbasedunwarping.jl")
include("methods.jl")
include("niftihandling.jl")
include("mcpc3ds.jl")
include("romeofunctions.jl")

export Data,
        readphase, readmag, niread, write_emptynii,
        header,
        savenii,
        estimatenoise,
        robustmask, robustmask!,
        robustrescale,
        #combine_echoes,
        calculateB0_unwrapped,
        mask_from_voxelquality,
        romeovoxelquality,
        getHIP,
        laplacianunwrap, laplacianunwrap!,
        getVSM,
        unwarp,
        thresholdforward,
        gaussiansmooth3d!, gaussiansmooth3d,
        gaussiansmooth3d_phase,
        makehomogeneous!, makehomogeneous,
        getsensitivity,
        getscaledimage,
        estimatequantile,
        RSS,
        mcpc3ds,
        unwrap, unwrap!, romeo, romeo!,
        unwrap_individual, unwrap_individual!,
        homodyne, homodyne!,
        to_dim,
        NumART2star, r2s_from_t2s

end # module
