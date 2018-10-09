# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: fourfoldplot

# Basic Idea ----
matrixOfData <- matrix(c(2,4,8,32), nrow = 2, ncol = 2, 
                     dimnames = list(c("Chickens","Fish"), c("Big","Small")))

fourfoldplot(matrixOfData)
fourfoldplot(matrixOfData, conf.level = .5, space = .25)

# Compare more than a matrix ----
arrayOfData <- array(seq(from = 1, by = 134, length.out = 12), 
                     dim = c(2,2,3), 
                     dimnames = list(c("Chickens","Fish"), c("Big","Small")))

fourfoldplot(arrayOfData, conf.level = .95, color = c("red","green"),
             std = "all.max",
             main = "Chicken vs Fish",
             mfrow = c(1,3))
