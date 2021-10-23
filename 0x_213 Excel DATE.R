# date returns the sequential serial number that represents a particular date.

# =date(YEAR, MONTH, DATE)

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "days"))

# concatenate and convert to string
paste0(Spreadsheet[1,2],"-",Spreadsheet[2,2],"-",Spreadsheet[3,2])

# then convert to a date
as.Date(paste0(Spreadsheet[1,2],"-",Spreadsheet[2,2],"-",Spreadsheet[3,2]))

# proof this is a date and not just a string
# str is STRucture of argument
str(as.Date(paste0(Spreadsheet[1,2],"-",Spreadsheet[2,2],"-",Spreadsheet[3,2])))
