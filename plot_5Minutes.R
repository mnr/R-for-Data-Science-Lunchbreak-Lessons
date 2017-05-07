# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for plot: five minutes of R

# documentation of plot()
?plot

# set up an x and y variable
my.X <- c(1:10)
my.Y <- seq(from=1, to=100,length.out = length(my.X))

# the simplest of all plots
plot(my.X,my.Y)

# change the appearance of the plotted points
plot(my.X,my.Y,type = "b")

# setting the titles and labels
plot(my.X,my.Y,
     type = "b",
     main = "Plot for 5 minutes of R",
     sub = "We are learning a little at a time",
     xlab="my.X is a simple vector",
     ylab="my.Y is a sequence")

# adding extra elements to a plot
plot(my.X,my.Y,
     type = "b",
     main = "Plot for 5 minutes of R",
     sub = "We are learning a little at a time",
     xlab="my.X is a simple vector",
     ylab="my.Y is a sequence")
lines(c(1,10),c(1,20))

# another example of plot & line
plot(my.X,my.Y)
lines(c(1,10),c(1,20), type="o", pch=22, lty=2, col="red")

# You can also use functions as x and y arguments
some.values <- function() { 
  return(seq(from=1, to=100,length.out = length(my.X)))
  }
plot(my.X,some.values())
