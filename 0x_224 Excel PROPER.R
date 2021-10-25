# proper()

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "numbers"))
