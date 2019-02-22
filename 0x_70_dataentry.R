# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: editing data in place

# There are four ways to edit R objects
# edit
# fix
# dataentry
# data.entry


# edit() ----general purpose. Good for editing existing object-------------

newChickens <- edit()

Chickens <- edit(ChickWeight) #X11 library is missing: install XQuartz from xquartz.macosforge.org

listOfChickens <- edit(as.list(ChickWeight))


# fix() -----edits an object in place--------------------------------------

fix(listOfChickens) 

# dataentry() -----Create a new list from scratch-----------------------

editedChick <- dataentry(data = list(ChickWeight$weight, ChickWeight$Time), 
                         modes = list("numeric", "numeric"))

# data.entry() ----Create from scratch with more control-------------------

data.entry(Chickens) # error. Must be numeric or character vectors

data.entry(Chickens$weight, Chickens$Time,
           Names = c("theWeight", "theTime")) # change Chickens$weight.

# data.entry doesn't like factors
data.entry(Chickens$weight, Chickens$Time, Chickens$Chick)

data.entry(Chickens$weight, Chickens$Time, levels(Chickens$Chick))
