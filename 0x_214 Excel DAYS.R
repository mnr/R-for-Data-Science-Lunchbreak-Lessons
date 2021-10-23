# days returns the number of days between two dates.

# date1=DATE(B1,B2,B3)
# date2=DATE(C1,C2,C3)
# =days(date2,date1) equals 16

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "days"))

# There are more elegant ways of doing this - but for the sake of instruction...
date1 <- as.Date(paste0(Spreadsheet[1,2],"-",Spreadsheet[2,2],"-",Spreadsheet[3,2]))
date2 <- as.Date(paste0(Spreadsheet[1,3],"-",Spreadsheet[2,3],"-",Spreadsheet[3,3]))

# like you might expect
date2 - date1

# this gets complicated real fast. 
# reference R for Data Science: Dates and Times in Linkedin Learning Library
