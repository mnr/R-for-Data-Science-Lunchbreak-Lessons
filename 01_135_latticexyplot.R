# lattice xyplot
# formula: xyplot(numeric1 ˜ numeric2)

library(lattice)

# xyplot is an important place to start - all attributes are defined in this help file.

# so easy to set up plots once you understand formulas
xyplot(weight ~ Time, data = ChickWeight)
xyplot(weight*3 ~ Time, data = ChickWeight)
xyplot(weight ~ Time | Diet, data = ChickWeight)

# what if you want to add two variables instead of combine graphs?
ChickWeight$anotherVar <- 1:nrow(ChickWeight) # add a variable

# not what we want
xyplot(weight ~ Time + anotherVar, type = "l", data = ChickWeight)
# use I() (inhibit interpretation) to get desired result
xyplot(weight ~ I(Time + anotherVar), type = "l", data = ChickWeight)


# lots of options for creating keys/legends
xyplot(weight ~ Time | Diet, 
       data = ChickWeight,
       type = "a", # lines = average
       groups = Diet, # necessary for auto.key,
       auto.key = list(columns = 2, 
                       points = FALSE,
                       rectangles = TRUE,
                       space = "bottom"))

# or just use autokey
xyplot( weight ~ Time, 
        groups = Diet,
        data = ChickWeight, 
        type = "l",
        auto.key = TRUE)




