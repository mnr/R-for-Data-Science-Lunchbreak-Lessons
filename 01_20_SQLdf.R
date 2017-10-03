# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for SQLdf

# main idea: crossover between R data.frames and SQL


# Set up SQLdf -----------------------------------------------------------

# import necessary libraries
install.packages("sqldf")

library(sqldf)

# get some data to play with
data("ChickWeight")

# let's say:
# I wanted the median weight of all chicks
# ... AND I know SQL

# sqldf allows us to run an SQL call against a data.frame 
sqldf("Select Chick, median(weight) 
      from ChickWeight 
      group by Chick 
      order by cast(Chick as int)")

# documentation -----------------------------------------------------------
browseURL("https://cran.r-project.org/web/packages/RSQLite/RSQLite.pdf")
