# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: docall

# do.call vs ...
# apply
# map
# purr
# Vectorized approach


# Grab some data ----------------------------------------------------------
URLBase <- "https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_"

weatherData2012 <- read.table(paste0(URLBase,"2012.txt"))
weatherData2013 <- read.table(paste0(URLBase,"2013.txt"))
weatherData2014 <- read.table(paste0(URLBase,"2014.txt"))
weatherData2015 <- read.table(paste0(URLBase,"2015.txt"))
###

# How to combine them into one dataframe?

# one way
allWeatherData <- rbind(weatherData2012,weatherData2013, weatherData2014, weatherData2015)

# another way
allWeatherData <- do.call(rbind, c(weatherData2012, weatherData2013, weatherData2014, weatherData2015))
