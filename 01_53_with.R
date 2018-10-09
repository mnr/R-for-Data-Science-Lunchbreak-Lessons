# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: with...

data("ChickWeight")

# original equation
ChickWeight["quantile"] <- cut(ChickWeight$weight, breaks = quantile(as.integer(ChickWeight$weight)),labels = c("0%", "25%", "50%", "75%"))

# using with()
ChickWeight["quantile"] <- with(ChickWeight, cut(weight, breaks = quantile(as.integer(weight)), labels = c("0%", "25%", "50%", "75%")))

# using within()
# The first line doesn't work because within() returns the originating dataframe from the environment
ChickWeight["quantile"] <-  within(ChickWeight, cut(weight, breaks = quantile(as.integer(weight)), labels = c("0%", "25%", "50%", "75%")))
# instead, do this...
ChickWeight <- within(ChickWeight, quantile <- cut(weight, breaks = quantile(as.integer(weight)), labels = c("0%", "25%", "50%", "75%")))


# using pipes
library(magrittr)

ChickWeight["quantile"] <- ChickWeight$weight %>%
  cut(., breaks = quantile(as.integer(.)), labels = c("0%", "25%", "50%", "75%"))
