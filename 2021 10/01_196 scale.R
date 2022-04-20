# scale( )
# also called normalization
# move two or more ranges of numbers to a common centerpoint

# simple example
scale(c(1:11))

plot(scale(c(1:11)))
lines(scale(c(1:11), scale = 7), col = "blue")
lines(scale(c(1:11), center = 4), col = "red")

# change the larger scale
lines(scale(1:50), col = "green")

# scale a matrix
mymatrix <- matrix(c(1:13, 23:30, 38:42), ncol = 2)
mymatrix # two columns of different ranges
boxplot(mymatrix) # original ranges not related
scale(mymatrix) # numbers are moved to common range
boxplot(scale(mymatrix)) # what scaled values look like


