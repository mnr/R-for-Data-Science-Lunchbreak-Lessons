# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for lists: five minutes of R

# lists are special types of vectors, but allow for mixed types:
I.am.a.vector <- c("twas","brillig","and","the","slithey","toves")
I.am.a.list <- list(1,TRUE,"gyre")
str(I.am.a.list[2]) # logical
str(I.am.a.list[3]) # character

# lists can contain lists
a.list <- c(letters[1:3]) # contains "a", "b", "c"
another.list <- c(1:5) # contains 1,2,3,4,5
still.another.list <- c(TRUE,FALSE,TRUE)
I.am.a.list <- list(a.list,another.list,still.another.list)
str(I.am.a.list)

# [ ] is used for subsetting. Returns a list
# [[ ]] is used for extracting. Returns an element
I.am.a.list <- list("hello",another.list,13)
str(I.am.a.list[1]) # returns a list
str(I.am.a.list[[1]]) # returns a character
str(I.am.a.list[2]) # returns a list
str(I.am.a.list[[2]]) # returns integers


# named list elements (aka key/value)
I.am.a.list <- list(bob=c(6.2,150),bill=c(5.4,110))
names(I.am.a.list)
I.am.a.list["bob"]
I.am.a.list[["bob"]][2]
I.am.a.list$bob
I.am.a.list$bob[1]
