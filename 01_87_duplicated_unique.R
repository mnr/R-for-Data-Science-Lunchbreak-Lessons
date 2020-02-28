# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: duplicated and unique
# affiliate: https://linkedin-learning.pxf.io/rweekly_dup_uniq

# refer back to the session on any_all for anyDuplicated()

bunchOLetters <- c(letters,"a","d", "m")

duplicated(bunchOLetters) # shows which elements of a vector are duplicated.
duplicated(bunchOLetters, incomparables = "a") 
duplicated(bunchOLetters, fromLast = TRUE)

# or conversely, unique
unique(bunchOLetters) # shows which elements of a vector are duplicated.
unique(bunchOLetters, incomparables = "a") 
unique(bunchOLetters, fromLast = TRUE)

# uses
bunchOLetters[duplicated(bunchOLetters)]
unique(bunchOLetters)
