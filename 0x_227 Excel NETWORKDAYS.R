# networkdays() Returns the number of whole workdays between two dates
# Working days exclude weekends and any dates identified in holidays.

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, sheet = "days"))

# =NETWORKDAYS( DATE(B1,B2,B3), DATE(C1,C2,C3) ) = 12

# then in R
# There are more elegant ways of doing this - but for the sake of instruction...
date1 <- as.POSIXlt(paste(Spreadsheet[1:3,2], collapse = "-"))
date2 <- as.POSIXlt(paste(Spreadsheet[1:3,3], collapse = "-"))


# doesn't account for weekends or holidays
date2 - date1

install.packages("BusinessDuration")
library(BusinessDuration)

businessDuration(startdate = date1,
                 enddate = date2,
                 starttime =  "08:00:00",
                 endtime =  "17:00:00",
                 unit = "day"
)
