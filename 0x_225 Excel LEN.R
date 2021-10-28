# =len() returns the number of characters in a text string.



library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, 
                                        sheet = "text"))

# =LEN(A1) is 4
nchar(Spreadsheet[1,1]) # = 4

# you might think of the length() R function, but...
length(Spreadsheet[1,1]) # = 1 because length() counts elements

# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

LEN("Test")
