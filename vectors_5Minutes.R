# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for Vectors: five minutes of R

# vectors are the simplest data storage in R
# They are like standard variables
I.am.a.vector <- 1

# except they are closer to arrays
I.am.a.vector <- c(1,2,3)
I.am.a.vector <- c("twas","brillig","and","the","slithey","toves")

# ...but different. They have members (which must be the same type).
length(I.am.a.vector) == 6 # length is number of members, not length of string
sum(nchar(I.am.a.vector)) == 29 # length of complete "string"

# mixing types is not a vector (it's a list):
Everything.converts.to.a.string <- c(1,"a string",TRUE) 

# Vectors are not strings. Seriously.
I.am.also.a.vector <- c("did","gyre","and","gimble","in","the","wabes")
paste(I.am.a.vector,I.am.also.a.vector) # maybe not what you expected
c(I.am.a.vector,I.am.also.a.vector) # end for end combination.

# indexing into a vector
I.am.a.vector[3] # first member is at position 1
I.am.a.vector[0] # nope
I.am.a.vector[-3] # select all but element three
I.am.a.vector[1:3] # select elements 1, 2 and 3

# need something like a python dictionary?
names(I.am.a.vector) <- c("first","second","third","fourth","fifth","sixth")
I.am.a.vector["second"]
