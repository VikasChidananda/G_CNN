using DrWatson
@quickactivate "G_CNN"

using Test

function check_equivariance(ϕ)
    # random Transformation Matrix
    T = [1 0 0 0
         0 1 0 0
         0 0 1 0
         0 0 0 2]
    # random input
    x = rand(4)
    # check equivariance
    @test T * ϕ.(x) ≈ ϕ.(T * x) ; println("Equivariance check passed")
end

# Testing equivariance of f(x) = x
f(x)    =    2x
check_equivariance(f)




