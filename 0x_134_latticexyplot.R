# lattice xyplot

library(lattice)

# xyplot is an important place to start - all attributes are defined in this help file.

# so easy to set up plots once you understand formulas
xyplot(weight ~ Time, data = ChickWeight)
xyplot(weight*3 ~ Time, data = ChickWeight)
xyplot(weight ~ Time | Diet, data = ChickWeight)

xyplot(Time + weight ~ Chick, data = ChickWeight)
# which is equivalent to
xyplot(Time ~ Chick, data = ChickWeight)
#...and...
xyplot(weight ~ Chick, data = ChickWeight)
# but in the same panel
# what if you want the two LHS in separate plots
xyplot(Time + weight ~ Chick, data = ChickWeight, outer = TRUE)


# what if you want to add two variables instead of combine graphs?
# not what we want
xyplot(Chick ~ Time + weight, data = ChickWeight)
# use I() to get desired result
xyplot(Chick ~ I(Time + weight), data = ChickWeight)


# lots of options for creating keys/legends
xyplot(weight ~ Time | Diet, 
       data = ChickWeight,
       type = "a", # lines = average
       groups = Diet, # necessary for auto.key,
       auto.key = list(columns = 2, 
                       points = FALSE,
                       rectangles = TRUE,
                       space = "bottom"))






