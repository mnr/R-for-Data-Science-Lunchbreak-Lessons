# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for subsetting

# main idea: R is designed to slice data with subsetting

# subsetting a simple vector
LETTERS[3] # LETTERS is a built-in R constant containing the upper-case alphabet.
LETTERS[3:5]
LETTERS[c(3,20:23)]
LETTERS[c(10,7,3)]

# Exclude
LETTERS[-c(3:5)]
LETTERS[c(-3,-5)]

# repeat "TRUE","FALSE" x 13, then apply to LETTERS. 
# TRUE means select the letter. FALSE means omit the letter
rep(c(TRUE,FALSE),13)
LETTERS[rep(c(TRUE,FALSE),13)] 

# two-dimension data can also be subsetted
# need a dataframe
lots.of.letters <- data.frame(LETTERS,letters,position=1:length(letters))

# first describe rows, then columns. a.matrix[row,column]
lots.of.letters[3,] # returns the 3rd row
lots.of.letters[,3] # returns the 3rd column
lots.of.letters["letters"] # returns the "letters" column
lots.of.letters[3:8,2] # returns values from column 2 for rows 3 through 8
lots.of.letters[3:8,2:3]
lots.of.letters[lots.of.letters$position > 10,"letters"]

# logical conditions used as selectors
lots.of.letters[LETTERS=="R","letters"]
lots.of.letters[LETTERS=="R" | LETTERS=="T","letters"] # | means "or". & means "and"

# INTERESTING
# The above code produces a successful subset - but for the wrong reasons.
# It should be...
lots.of.letters[lots.of.letters$LETTERS=="R","letters"]
# ...the name of the dataset is included instead of LETTERS == "R"
# It works because LETTERS == "R" returns a logical vector of 26 results. Try it...
LETTERS == "R"
# The result of LETTERS == "R" is then applied to the rows of lots.of.letters
# which returns the 18th row - which corresponds to "R"


# also look at...
browseURL("http://adv-r.had.co.nz/Subsetting.html")
?substr # use substring for character vector
?subset

