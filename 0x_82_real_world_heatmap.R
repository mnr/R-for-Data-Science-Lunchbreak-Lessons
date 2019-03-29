# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Real World project - heatmap

# google sheets code from High Variety

# install the googlesheets package if  you haven't already
# install.packages("googlesheets")
library(googlesheets)

# read data from an existing google sheet ----
workingGS <- gs_title("OOPS Meeting Location (Responses)") # this will initiate a browser auth session

# read that data back into R ----
dataFromGS <- gs_read(workingGS)

# heatmap from R weekly
