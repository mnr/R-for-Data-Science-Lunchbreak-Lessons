# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for pipelines

# main idea: piping data and results from one function to another


install.packages("magrittr")
library(magrittr)
?magrittr


# %>% ---------------------------------------------------------------------
# forward pipe 
myvar <- fivenum(1:23)
plot(myvar,1:5)
1:23 %>% fivenum() %>% plot(1:5)


# %T>% --------------------------------------------------------------------
# tee 
1:23 %>% fivenum() %T>% plot(1:5)


# %<>% --------------------------------------------------------------------
# compound assignment. updates the left-hand variable with results from right hand function
myvar <- 1:23
myvar %<>% fivenum()


# %$% ---------------------------------------------------------------------
# exposition. expose the names from left hand data to right hand function
source("popularNames.R") 
popularNames %>% fivenum() # doesn't work because variable not specified
popularNames %>% fivenum(rank) # doesn't work because variable name not available
popularNames %$% fivenum(rank) # works
