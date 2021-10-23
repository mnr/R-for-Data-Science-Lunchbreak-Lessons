# find locates one text string within a second text string, 
# ...and return the number of the starting position of the first text string 
# ...from the first character of the second text string.

# FIND(find_text, within_text, [start_num])
# a7=CONCATENATE(A1," ",B1," ",C1," ",D1," ",E1," ",F1)
# =FIND("slithey",A7)

library(readxl)
# install.packages("stringr")
library(stringr)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  col_names = FALSE, sheet = "text"))

paste(Spreadsheet[1, ], collapse = " ") # produces one string

str_locate(paste(Spreadsheet[1, ], collapse = " "), "slithey")
