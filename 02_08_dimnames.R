# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: dimnames for use with array and matrix

# build an array for demonstration
sample1 <- as.integer(runif(10, min = 1, max = 30))
sample2 <- c(10:1)
sample3 <- sample(1:30, 10)

AnimalPlanet <- array(c(sample1, sample2, sample3), dim = c(2,5,3))

AnimalPlanet # show the contents

# use labels to describe array contents. Length == size of array dim
planets <- c("Earth", "Mars") # note the number of array rows
weight = c("Featherweight", "Light", "Normal", "Medium", "Heavy" ) # note the number of columns
animals = c("Chickens", "Fish") # note number of levels

dimnames(AnimalPlanet) <- list("Planet" = planets, 
                               "Weight" = weight,
                               "Animals" = animals)
# ...because length(animals) != 3rd dimension of AnimalPlanet Array, we get...
# Error in dimnames(AnimalPlanet) <- list(Planet = planets, Weight = weight,  : 
# length of 'dimnames' [3] not equal to array extent

# add a value
animals = c("Chickens", "Fish", "Pigs") # note number of levels

# now this works
dimnames(AnimalPlanet) <- list("Planet" = planets, 
                               "Weight" = weight,
                               "Animals" = animals)

# retrieve and change names
apNames <- dimnames(AnimalPlanet)
names(apNames) <- "Destination"
dimnames(AnimalPlanet) <- apNames

# declare dimension names when creating array
AnimalPlanet <- array(c(sample1, sample2, sample3), 
                 dim = c(2,5,3),
                 dimnames = list(
                   "Planet" = c("Earth", "Mars"),
                   "weight" = c("Featherweight", "Light", "Normal", "Medium", "Heavy" ),
                   "animals" = c("Chickens", "Fish", "Pigs")
                   )
                 )
