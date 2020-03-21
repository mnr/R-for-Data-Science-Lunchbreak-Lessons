# lattice clouds and wireframe plot

library(lattice)

# clouds and wireframes are essentially the same, but different panel plotting methods

names(ChickWeight) # review names of columns

cloud( weight ~ Time + Diet, data = ChickWeight)
wireframe( weight ~ Time + Diet, data = ChickWeight)

# also can be done with a matrix

mymatrix <- matrix(1:10000, nrow = 100)
wireframe(mymatrix)

# used in aspect
xsize = 2
ysize = 1
zsize = 4

wireframe(mymatrix,
          shade = TRUE,
          aspect = c(ysize/xsize, zsize/xsize),
          light.source = c(10,0,10)
          )

# cool things to do with cloud
cloud( weight ~ Time + Diet, 
       data = ChickWeight,
       drape = TRUE)

# more parameters in xyplot and wireframe documentation

