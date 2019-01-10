# Example file for LinkedIn Learning, R for Data Science, lunchbreak learning - https://linkedin-learning.pxf.io/rweekly_with
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
