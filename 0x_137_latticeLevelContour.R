# lattice levelplot & contourplot
# contourplot(numeric1 ˜ numeric2 * numeric3)
# levelplot(numeric1 ˜ numeric2 * numeric3)

library(lattice)

names(ChickWeight) # review names of columns

# using exact same setup as cloud and wireframe
levelplot( weight ~ Time * Diet, data = ChickWeight)
levelplot( weight ~ Time * Diet, data = ChickWeight, contour=TRUE) # adds lines
levelplot( weight ~ Time * Diet, data = ChickWeight, cuts=7) # default cuts = 15

contourplot( weight ~ Time * Diet, data = ChickWeight)
contourplot( weight ~ Time * Diet, data = ChickWeight, region=TRUE) # adds levels
contourplot( weight ~ Time * Diet, data = ChickWeight, labels = FALSE) # removes labels from lines
contourplot( weight ~ Time * Diet, data = ChickWeight, cuts=30) 


