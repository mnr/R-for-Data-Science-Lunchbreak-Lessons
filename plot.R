# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for plot

# documentation of plot()
?plot

data(mtcars)

# the simplest of all plots
plot(mtcars$mpg,mtcars$hp)

# change the appearance of the plotted points
plot(mtcars$mpg,type = "b")

# setting the titles and labels
plot(mtcars$mpg,
     type = "b",
     main = "Plot for R Example",
     sub = "We are learning a little at a time",
     xlab="mpg is Miles Per Gallon",
     ylab="Look at the pretty bumps")

# adding another line to a plot
plot(mtcars$mpg,
     type = "b",
     main = "Plot for R Example",
     sub = "We are learning a little at a time",
     xlab="mpg is Miles Per Gallon",
     ylab="Look at the pretty bumps")
lines(c(5,30),c(15,30))
        
?lines # hint: this will tell you more about how to do lines

# another example of plot & line
plot(mtcars$mpg)
lines(c(5,30),c(15,30), type="o", pch=22, lty=2, col="red")

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
fivenum(mtcars$mpg) # the numbers used to create the boxplot

pie(table(mtcars$cyl))
pie(table(mtcars$cyl),labels=c("Economy","Average","Muscle"))

# ggplot2 is a very popular package from the tidyverse
# https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf

# related to ggplot2, look at qplot
