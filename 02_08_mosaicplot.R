# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: mosaicplot
sample1 <- runif(10, min = 1, max = 30)
sample2 <- c(10:1)
sample3 <- sample(1:30, 10)

AnimalPlanet <- array(c(sample1, sample2, sample3), 
                 dim = c(2,5,3),
                 dimnames = list(
                   "Planet" = c("Earth", "Mars"),
                   "weight" = c("Featherweight", "Light", "Normal", "Medium", "Heavy" ),
                   "animals" = c("Chickens", "Fish", "Pigs")
                   )
                 )

mosaicplot(AnimalPlanet)
mosaicplot(AnimalPlanet, shade = TRUE)
