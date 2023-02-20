using DrWatson
@quickactivate "G_CNN"

using Plots
using LinearAlgebra

include(srcdir("utils.jl"))

dummy_img = round.(rand(5,5), digits=1)

heatmap(   
            dummy_img, color= :greys
        )




