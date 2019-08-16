# Using R in the real world
# Challenge: https://www.linkedin.com/learning/statistics-foundations-1/understanding-statistics-with-the-use-of-charts

# see https://www.linkedin.com/learning/r-programming-in-data-science-high-variety-data/read-individual-cells-from-excel
install.packages("readxl")
library(readxl)

# download the sample files from statistics foundations
tryCatch({
  setWDback <- getwd()
  setwd(tempdir())
  Stat_datapackage <- tempfile()
  download.file(
    "https://files3.lynda.com/secure/courses/427473/exercises/Ex_Files_Statistics_Fund_Part1.zip?x1e5KsvrhbKCIbUTN1LoHLSal5a7HhGh4t6jRc0jDctq6Ryn8WFkNnwXdr1k46eTGnj8tLIdabHDpPVjQmnlTmSbBGggZOINAOJi8q70BOyBHVY1m6wPMFY8qIvEzGQ_nt9Yj8B-E1bb7zVK4v5m1VFe1_qsh-SG3LyzlkabbIDv",
    Stat_datapackage
  )
  unzip(Stat_datapackage)
  statExcelFile <-
    "Ex_Files_Statistics_Fund_Part1/Chapter 1/Chapter 1.xlsx"
  setwd(setWDback)
}, error = function(e) {
  # If the programmatic download doesn't work...
  # 1) download and unpack the zip file for Statistics Foundations Part 1
  # then run this to find "Chapter 1"
  message(
    "The automatic download and unpack didn't work. Please download the exercise file and unpack the zip file."
  )
  browseURL("https://www.linkedin.com/learning/statistics-foundations-1/")
  message("When you have downloaded and unpacked the exercise files, please choose Chapter 1.xlsx")
  if (askYesNo("Is the exercise file downloaded and unpacked and can you find Chapter 1.xlsx?")) {
    statExcelFile <- file.choose()
  } else {
    stop("Please Restart")
  }
  
})

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

