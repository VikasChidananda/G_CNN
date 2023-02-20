using DrWatson
@quickactivate "G_CNN"

using ImageFiltering
using OffsetArrays
using Plots

# getting indices off of a matrix
gaussian_kernel     =   Kernel.gaussian(1)