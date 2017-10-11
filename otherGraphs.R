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
