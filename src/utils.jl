using DrWatson
@quickactivate "G_CNN"

using Test

#--------------------------------------------------------------------------------------------- Equation (1) 
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


#  ---------------------------------------------------------------------------------------------- Equation (2)
# the p4 group
g(r, u, v) = [  
                cos(r * π/2)    -sin(r * π/2)   u; 
                sin(r * π/2)    cos(r * π/2)    v; 
                0               0               1;
             ]

# ---------------------------------------------------------------------------------------------- Equation (3)
# The group p4m
g(m, r, u, v) = [  
                    (-1^m) * cos(r * π/2)       -(-1^m) * sin(r * π/2)      u; 
                    sin(r * π/2)                cos(r * π/2)                v; 
                    0                           0                           1;
                ]





