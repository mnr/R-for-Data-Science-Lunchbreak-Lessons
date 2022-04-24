# sumif() and averageif()
# averageif() Returns the average (arithmetic mean) of all the cells in a range that meet a given criteria.
# sumif() sum values in a rage that meet a criteria

library(readxl)

Spreadsheet <- as.matrix(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

# =AVERAGEIF(A1:F1,">3") average of 1st row where numbers > 3
Spreadsheet[1,] # the first row of the spreadsheet
Spreadsheet[1,] >3 # produces True/False
Spreadsheet[1,Spreadsheet[1,]>3] # produces numbers in 1st row greater than three

# then averageif and sumif
mean(Spreadsheet[1,Spreadsheet[1,]>3])
sum(Spreadsheet[1,Spreadsheet[1,]>3])

# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

AVERAGEIF(Spreadsheet[1,], ">3", Spreadsheet[1,]) # insists on average range
SUMIF(Spreadsheet[1,], ">3", Spreadsheet[1,]) 
