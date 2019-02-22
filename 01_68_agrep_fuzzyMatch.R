# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: simple fuzzy string match

colors() # a list of color names

agrep(pattern = "blue", x = colors()) # index of matches 

agrep("blue", colors(), value = TRUE) # values of matched elements

agrep("brue", colors(), value = TRUE) 
agrep("brew", colors(), value = TRUE) 

agrep("^blue$", colors(), value = TRUE, fixed = FALSE) # use regex for exact match


