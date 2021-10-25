# average - the average (arithmetic mean) of the arguments.

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

# =AVERAGE(A1:F1)
Spreadsheet[1,] # first row of spreadsheet, all columns
mean(Spreadsheet[1,]) # argument not numeric? - It's because it's a data.frame
mean(as.numeric(Spreadsheet[1,])) # need to convert to numeric

Spreadsheet <- as.matrix(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

mean(Spreadsheet[1,]) # this works because Spreadsheet is a matrix instead of data.frame

# what about NA?
# =AVERAGE(A2:F2)
Spreadsheet[2,] # this contains NA
mean(Spreadsheet[2,]) # returns NA
mean(Spreadsheet[2,], na.rm = TRUE) # NA removed, so now this works.

# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

AVERAGE(Spreadsheet[1,]) # argument can't be a range, must be individual numbers
AVERAGE(2,3,4)
