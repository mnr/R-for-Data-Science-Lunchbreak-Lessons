# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: mosaicplot
# affiliate: https://linkedin-learning.pxf.io/rweekly_mosaicplot

# build an array for demonstration
sample1 <- as.integer(runif(10, min = 1, max = 30))
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

# playin with options
mosaicplot(AnimalPlanet, shade = TRUE)
mosaicplot(AnimalPlanet, shade = fivenum(AnimalPlanet))

mosaicplot(AnimalPlanet, shade = TRUE, sort = c(3,2,1))
mosaicplot(AnimalPlanet, shade = TRUE, off = c(20,15,20))
mosaicplot(AnimalPlanet, shade = TRUE, dir = c("h","v","h"))
mosaicplot(AnimalPlanet, color = TRUE)
mosaicplot(AnimalPlanet, color = c("red","green","blue"))
mosaicplot(AnimalPlanet, cex.axis = .5)
mosaicplot(AnimalPlanet, las = 1) # 0, 1, 2, 3
mosaicplot(AnimalPlanet, type = "f")

# also uses ~ for formula substitution