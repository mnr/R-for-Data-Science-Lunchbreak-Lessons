# index returns a value or the reference to a value from within a table or range.

# =INDEX(A1:F6,3,2) is 6

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))

# R is exceedingly good at this...
Spreadsheet[3,2]
