# G_CNN

This code base is using the [Julia Language](https://julialang.org/) and
[DrWatson](https://juliadynamics.github.io/DrWatson.jl/stable/)
to make a reproducible scientific project named
> Group Equivariance CNN

It is authored by Vikas Chidananda.

This is my attempt at implementing the paper [1] in Julia. The code is not optimized for speed and is not meant to be used for any serious purpose. It is just a learning exercise for me.

To (locally) reproduce this project, do the following:

0. Download this code base. Notice that raw data are typically not included in the
   git-history and may need to be downloaded independently.
1. Open a Julia console and do:
   ```
   julia> using Pkg
   julia> Pkg.add("DrWatson") # install globally, for using `quickactivate`
   julia> Pkg.activate("path/to/this/project")
   julia> Pkg.instantiate()
   ```

This will install all necessary packages for you to be able to run the scripts and
everything should work out of the box, including correctly finding local paths.

You may notice that most scripts start with the commands:
```julia
using DrWatson
@quickactivate "G_CNN"
```
which auto-activate the project and enable local path handling from DrWatson.

# References
   [1] [Taco S.Cohen, Max Welling, "Group Equivariance Convolutional Networks"](https://arxiv.org/pdf/1602.07576.pdf)



