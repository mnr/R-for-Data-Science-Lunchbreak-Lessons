# countif()

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

COUNTIF()