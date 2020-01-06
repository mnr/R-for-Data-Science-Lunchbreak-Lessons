# Split the elements of a character vector x into substrings 
# according to the matches to substring split within them.

thisVector <- c("bibbity.bibb", "bobbity.bob", "boo.boo")

strsplit(thisVector, split = "b")
# note that the matching character ("b") is removed

# Note that split is a regular expression
strsplit(thisVector, ".") # oops! "." is a regular expression that means any character
# instead
strsplit(thisVector, ".", fixed = TRUE)
# or
strsplit(thisVector, "\\.") # escape the period


# let's examine regular expressions
# only split on two or more b
strsplit(thisVector, "b{2,}") 
# only split on two or more b OR .
strsplit(thisVector, "b{2,}|\\.") 

