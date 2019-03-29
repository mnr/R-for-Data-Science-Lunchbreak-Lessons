# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: heatmap

# first concern about heatmap - data must be a numeric matrix

mySimpleData <- matrix(c(sample(1:10, 40, replace=TRUE)), nrow = 10)
mySimpleData[15] <- 100 # YIKES! an outlier!
dimnames(mySimpleData) <- list(c(), c("Wheat", "Rye", "Quinoa", "Rice" ))

# the very basic heatmap
heatmap(mySimpleData) 
# rows and columns are grouped and a dendogram is shown

# use RowV and ColV = NA to suppress dendogram
heatmap(mySimpleData, Rowv = NA, Colv = NA) 

# row numbers aren't useful - let's get rid of them
heatmap(mySimpleData, Rowv = NA, Colv = NA, labRow = NA) 

# scale = none keeps the color -> value consistent
# row/column scaled to mean of 0, stdDev = 1
heatmap(mySimpleData, Rowv = NA, Colv = NA, labRow = NA, scale = "none") 
heatmap(mySimpleData, Rowv = NA, Colv = NA, labRow = NA, scale = "row")
heatmap(mySimpleData, Rowv = NA, Colv = NA, labRow = NA, scale = "column") 

# change the colors
heatmap(mySimpleData, 
        Rowv = NA, Colv = NA, labRow = NA, 
        scale = "column",
        col=terrain.colors(max(mySimpleData))
        ) 

