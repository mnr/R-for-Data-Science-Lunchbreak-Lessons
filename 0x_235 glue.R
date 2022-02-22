# glue

install.packages("glue")
library(glue)

thisThing <- Sys.Date()

# the traditional way to include a string
print(paste("Today is", thisThing))

# the new way...
glue("Today is {thisThing}")
# ... or ...
glue("Today is {Sys.Date()}")
# R equations and functions are evaluated

# simplifies multiple string inclusion
thatThing <- "Mark Niemann-Ross"
glue("Today is {thisThing} and {thatThing} is talking.")

# add color to output
glue_col("Today is {yellow {thisThing}} ", 
         "and {green {thatThing}} is talking.")
