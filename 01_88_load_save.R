# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: save and load a data structure
# affiliate: https://linkedin-learning.pxf.io/rweekly_loadsave

# scenario: 
# Sue runs a network of weather stations
# every day she generates a report showing the last two weeks of temperature
# the data is collected when she runs the report
# Only today's data is available from the weather station
# how does she save the previous two weeks?

# answer: save and load

# setup
todaysTemperature <- function() runif(1,0,1) * 100 # temperature simulator
daily_temperature <- todaysTemperature()

# add a temperature to list
daily_temperature <- append(daily_temperature, todaysTemperature())

# save the list of temperatures
# rda is accepted for "r data" but isn't necessary
save(daily_temperature, file = "daily_temperatures.rda")

# delete the file (clear environment)
# rebuild the function
# load the data file
load(file = "daily_temperatures.rda", verbose = TRUE)

# can also save the function
save(list = c("daily_temperature", "todaysTemperature"), file = "daily_temperatures.rda")

# or can save the entire workspace
save.image(file = "tempWorkspace.RData")

# want to see?
save(daily_temperature, ascii = TRUE, file = "asciiDailyTemp.txt")
