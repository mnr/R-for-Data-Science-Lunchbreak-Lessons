# lattice clouds and wireframe plot
# wireframe(numeric1 ~ numeric2 * numeric3) # 2 vars on a grid
# cloud(numeric1 ~ numeric2 * numeric3) # 3 vars

library(lattice)

# clouds and wireframes "look" the same...but

# I need a third numeric variable
ChickWeight$ascend <- 1:nrow(ChickWeight)
names(ChickWeight) # review names of columns

cloud( weight ~ Time * ascend, data = ChickWeight)

# labeling axis
cloud( weight ~ Time * Diet, 
       data = ChickWeight,
       scales = list(arrows = FALSE))

# wireframe focused on comparing two variables against a third
wireframe( weight ~ Time * Diet, data = ChickWeight)

# also can be done with a matrix

mymatrix <- matrix(1:10000, nrow = 100)
wireframe(mymatrix)

# ooh - fancy!
wireframe(mymatrix,
          shade = TRUE,
          light.source = c(10,0,10),
          drape = TRUE
)


# more parameters in xyplot and wireframe documentation

