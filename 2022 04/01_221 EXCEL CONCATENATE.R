# concatenate()

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, sheet = "text"))

paste(Spreadsheet[1,], collapse = " ")

paste(c("This is from Jabberwocky:", Spreadsheet[1,]), collapse = " ")

# note that c() creates a vector - not a string

# or look at excelfunctionsR
# https://cran.r-project.org/package=ExcelFunctionsR
# install.packages("ExcelFunctionsR")
library(ExcelFunctionsR)

CONCATENATE("This","That","TheOther")
CONCATENATE(Spreadsheet[1,]) # doesn't like ranges
