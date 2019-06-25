# Using R in the real world
# Challenge: https://www.linkedin.com/learning/statistics-foundations-1/understanding-statistics-with-the-use-of-charts

# see https://www.linkedin.com/learning/r-programming-in-data-science-high-variety-data/read-individual-cells-from-excel
install.packages("readxl")
library(readxl)


# download and unpack the zip file for course
# then run this to find "Chapter 1"
# file.choose r weekly not listed yet
statExcelFile <- file.choose()

# read the range from the excel file 
statData <- read_xlsx(statExcelFile, range = "WEIGHTS!b2:B52")


# create a dotplot of weight ~ frequency
# https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/stripchart
stripchart(statData$Weights, method = "stack", offset = 0.5, at = 0.2, 
           pch = 16, cex = 4)

# Create a histogram of 10 pound intervals
# https://www.linkedin.com/learning/r-for-data-science-lunchbreak-lessons/histogram
lowest_ten <- as.integer(min(statData$Weights)/10) * 10
weightbyten <- seq(from = lowest_ten-20, to = max(statData$Weights)+20, by = 10)
#brokenWeights <- cut(statData$Weights, breaks = weightbyten)

hist(statData$Weights, breaks = weightbyten, right = FALSE)

# Create a histogram of relative frequency of weights to total population
hist(statData$Weights, breaks = weightbyten, right = FALSE, freq = FALSE)

