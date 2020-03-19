# lattice cloud charts

# 3d scatterplots and wireframe surface plot

names(ChickWeight)

cloud( weight ~ Time + Diet, data = ChickWeight)
wireframe( weight ~ Time + Diet, data = ChickWeight)

# also can be done with a matrix

mymatrix <- matrix(1:10000, nrow = 100)
wireframe(mymatrix)
