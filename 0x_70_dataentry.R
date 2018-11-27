# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: editing data in place

Chickens <- ChickWeight # need some data

editedChick <- dataentry(data = list(Chickens$weight, Chickens$Time), 
          modes = list("numeric", "numeric"))

data.entry(editedChick) # re-edit

data.entry(Chickens) # error. Must be numeric or character vectors

data.entry(Chickens$weight, Chickens$Time) # change Chickens$weight. Reflected in environment

# watch what happens to Chickens$weight if you re-run line 12

# data.entry doesn't like factors
data.entry(Chickens$weight, Chickens$Time, Chickens$Chick)

data.entry(Chickens$weight, Chickens$Time, levels(Chickens$Chick))
