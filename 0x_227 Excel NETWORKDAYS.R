# networkdays() Returns the number of whole workdays between two dates
# Working days exclude weekends and any dates identified in holidays.

library(readxl)

Spreadsheet <- as.data.frame(read_excel("SampleSpreadsheet.xls",  
                                        col_names = FALSE, sheet = "days"))

# =NETWORKDAYS( DATE(B1,B2,B3), DATE(C1,C2,C3) ) = 12

# then in R
# There are more elegant ways of doing this - but for the sake of instruction...
date1 <- as.Date(paste(Spreadsheet[1:3,2], collapse = "-"))
date2 <- as.Date(paste(Spreadsheet[1:3,3], collapse = "-"))

# doesn't account for weekends or holidays
date2 - date1

install.packages("bizdays")
library(bizdays)
create.calendar(name='WeekendsOnly', weekdays=c('sunday', 'saturday'))
bizdays(from = date1,to = date2, 'WeekendsOnly')


# add in a holiday
create.calendar(name='CalWithHoliday', 
                start.date = date1,
                end.date = date2,
                weekdays=c('sunday', 'saturday'),
                holidays = '2021-04-01')
bizdays(from = date1,to = date2, 'CalWithHoliday')
