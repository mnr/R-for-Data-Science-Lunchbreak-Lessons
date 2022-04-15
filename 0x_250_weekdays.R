# weekdays, months, quarters, & julian

mydate <- Sys.Date()

weekdays(mydate)
weekdays(mydate + 10) 
weekdays(mydate + 1:5) # handles a vector of multiple dates
weekdays(mydate + 1:5, abbreviate = TRUE)

# likewise -------
months(mydate)
quarters(mydate)

# julian is for days since 1970-01-01
julian(mydate) 

# change the origin to calculate days since ....
julian(mydate, origin = as.Date("2000-01-01")) # days since Y2K

# julian also works with datetime
julian(as.POSIXct(Sys.time()))
julian(as.POSIXlt(Sys.time()))

# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates