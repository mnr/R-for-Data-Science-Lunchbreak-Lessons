# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for plot

# main idea: a quick overview of plotting in R

source("chicknames.R")

# the simplest of all plots
plot(ChickWeight$Time,ChickWeight$weight)

# change the appearance of the plotted points
plot(ChickWeight$Time,ChickWeight$weight,type = "l")

# setting the titles and labels
plot(ChickWeight$Time,ChickWeight$weight,
     type = "l",
     main = "Plot for R Example",
     sub = "We are learning a little at a time",
     xlab="number of days since birth",
     ylab="grams of body weight")

# adding another line to a plot
plot(ChickWeight$Time,ChickWeight$weight,
     type = "l",
     main = "Plot for R Example",
     sub = "We are learning a little at a time",
     xlab="number of days since birth",
     ylab="grams of body weight")
lines(c(1,20),c(350,50)) # lines(c(x1-value,x2-value),c(y1-value,y2-value))

# change the appearance of the graph
?lines
?par
lines(c(1,20),c(350,50), type="o", pch=22, lty=2, col="red")

# You can also use functions as x and y arguments
some.values <- function(my.something) { 
  return(seq(from=1, to=100,length.out = length(my.something))^2)
  }
plot(mtcars$mpg,some.values(mtcars$mpg))

# clever trick - put a plot in a function
plotThis <- function(lineX,lineY) {plot(mtcars$mpg,
     type = "b",
     main = "Plot for R Example",
     sub = "We are learning a little at a time",
     xlab="mpg is Miles Per Gallon",
     ylab="Look at the pretty bumps")
lines(lineX,lineY)
}
plotThis(c(5,30),c(15,30))
plotThis(c(15,30),c(15,40))

# Other types of charts
hist(mtcars$mpg)

boxplot(mtcars$mpg)
boxplot(mpg ~ cyl, data=mtcars, col="lightgray", varwidth=TRUE, 
        main="mpg vs cylinders",
        ylab="mpg",xlab="cylinders")
fivenum(mtcars$mpg) # the numbers used to create the boxplot

pie(table(mtcars$cyl))
pie(table(mtcars$cyl),labels=c("Economy","Average","Muscle"))

# ggplot2 is a very popular package from the tidyverse
# https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf

# related to ggplot2, look at qplot
