# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for SQLdf

# main idea: crossover between R data.frames and SQL


# Set up SQLdf -----------------------------------------------------------

# import necessary libraries
list.of.packages <- c("sqldf")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(sqldf)

# get some data to play with
data("ChickWeight")

# run an SQL call against a data.frame subset
sqldf("Select Chick, median(weight) from ChickWeight group by Chick order by cast(Chick as int)")

# using standard R syntax, this would be written as...
chick_median_weight <- aggregate(weight ~ Chick,ChickWeight,median)
chick_median_weight[order(as.numeric(levels(chick_median_weight$Chick))),]

# documentation -----------------------------------------------------------
browseURL("https://cran.r-project.org/web/packages/RSQLite/RSQLite.pdf")
