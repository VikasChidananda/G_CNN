using DrWatson
@quickactivate "G_CNN"

using ImageFiltering
using OffsetArrays
using Plots

# getting indices off of a matrix
gaussian_kernel     =   Kernel.gaussian(1)
Z                   =   OffsetArray(gaussian_kernel, -2:2, -2:2)
to_indices          =   [c.I for c ∈  CartesianIndices(Z)]