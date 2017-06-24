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

# adding another line to a plot
plot(my.X,my.Y,
     type = "b",
     main = "Plot for 5 minutes of R",
     sub = "We are learning a little at a time",
     xlab="my.X is a simple vector",
     ylab="my.Y is a sequence")
lines(c(1,10),c(1,20))

?lines # hint: this will tell you more about how to do lines

# another example of plot & line
plot(my.X,my.Y)
lines(c(1,10),c(1,20), type="o", pch=22, lty=2, col="red")

# You can also use functions as x and y arguments
some.values <- function() { 
  return(seq(from=1, to=100,length.out = length(my.X))^2)
  }
plot(my.X,some.values())

# other chart types:
hist(my.X)
boxplot(my.X)
qqnorm(my.X)

# ggplot2 is a very popular package from the tidyverse
# https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf

# related to ggplot2, look at qplot
