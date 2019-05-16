# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: looking at c( )

# c( ) is in constant use. But maybe you don't know what it actually is

# combines it's arguments
intThing <- c(1:10)
floatThing <- c(1.2, 3.14, 7.4)
factorThing <- factor(c("apple", "banana", "banana", "apple"))
dfThing <- data.frame(numbers = 1:26, alpha = letters, ALPHA = LETTERS, stringsAsFactors = FALSE)
arrayThing <- array(c(1:26,letters,LETTERS), 
                    dim = c(2,13,3), 
                    dimnames = list(c("odd","even"),NULL,c("numbers","alpha","ALPHA")))
characterThing <- c("a", "b", "c")


# what happens when combining different types?
# "highest type of component" NULL < raw < logical < integer < double < complex < character < list < expression
mixedThing <- c(intThing, factorThing)
str(mixedThing)
mixedThing <- c(factorThing, intThing)
str(mixedThing)
mixedThing <- c(factorThing, factorThing)
mixedThing <- c(intThing, floatThing)
mixedThing <- c(intThing, dfThing) # returns a list

