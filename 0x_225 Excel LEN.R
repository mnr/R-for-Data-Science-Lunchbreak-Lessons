# =len() returns the number of characters in a text string.

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, 
                                        sheet = "text"))

# =LEN(A1) is 4
nchar(Spreadsheet[1,1]) # = 4

# you might think length() is the right R function, but...
length(Spreadsheet[1,1]) # = 1 because length() counts elements - not length of elements.
# for example...
length(Spreadsheet) # produces 7 - because there are 7 observations in the dataframe.

# if the spreadsheet is read in as a matrix...
Spreadsheet <- as.matrix(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, 
                                        sheet = "text"))
length(Spreadsheet) # now this produces 28 - because there are 28 elements

# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

LEN("Test")
LEN(Spreadsheet) # produces the length of each element in the matrix
