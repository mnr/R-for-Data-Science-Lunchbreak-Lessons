# formulas capture the relationship in data

# an example of how formula can be used

myData <- data.frame(blerbs = 1:20,
                     dords = 20:1,
                     sinwave = sin(1:20),
                     fruit = as.factor(rep(c("apple","banana"),10)),
                     animals = as.factor(rep(c("ant","cat","bat","rat"),5))
)

# first ... without a formula
plot(x = myData$dords, y = myData$blerbs)

# then...with a formula

library(lattice) # using lattice system for formula support

# ~ ... y ~ x ... y is a function of column x
xyplot(x = blerbs ~ dords, data = myData)

# "Dependent variable" ~ "independent variable"
# "response ~ terms" as used by lm()

# pronounce x ~ y as "x is a function of y"
# or, in the case of lattice "x is graphed against y"

# formulas allow for subset -----------------------------------------------

xyplot(x = blerbs ~ dords | animals == "ant" , data = myData)

xyplot(x = blerbs ~ dords | animals , 
       data = myData[myData$sinwave > .5, ])

# ... or use the subset parameter ...
xyplot(x = blerbs ~ dords | animals , data = myData, subset = dords < 10)
xyplot(x = blerbs ~ dords | animals , data = myData, subset = dords > 10)

# formulas can have equations ---------------------------------------------

xyplot(x = cut(blerbs, breaks = 4) ~ dords, data = myData)
xyplot(x = blerbs ~ cut(dords, breaks = 4), data = myData)


# I() is for identity - escape special meanings ---------------------------

xyplot(x = I(blerbs * 2) ~ dords, data = myData) 

# Formula is a class ------------------------------------------------------

class(1) # a reminder of what "class" does. this returns "numeric"

class(x ~ y) # returns "formula"
myformula <- "x ~ y" # stored as string
myformula <- as.formula("x ~ y") # stored as formula


# constructing a formula --------------------------------------------------

# + ... y ~ x + a ... y is a function of columns x and a
xyplot(x = as.formula(blerbs ~ dords + sinwave), data = myData)

# - ... y ~ x - a ... y is a function of column x, but not a
xyplot(x = blerbs ~ dords - sinwave, data = myData)


# | ... y ~ x | a ... y is a function of x conditioned by a
xyplot(x = blerbs ~ dords - sinwave | fruit, data = myData)
xyplot(x = blerbs ~ fivenum(dords) | animals, data = myData)

# there are more operators ------------------------------------------------

# : ... y ~ x:a ... y is a function of interaction between x and a

# * ... y ~ x*a ... y is a function of columns x and a and their interaction




