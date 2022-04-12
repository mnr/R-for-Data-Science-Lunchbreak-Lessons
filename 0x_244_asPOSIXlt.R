# as.POSIXlt

# Date is only date.
# POSIXlt and POSIXct are date & time
# POSIXlt and POSIXct are related
# POSIXlt stores date/time as components (Years, Days, Months, Hours...)
# POSIXct stores date/time as seconds since 1970-01-01 00:00:00 UTC

as.POSIXlt("2022-03-23")
str(as.POSIXlt("2022-03-23"))

myDateTime <- as.POSIXlt("2022-03-23")
myDateTime <- as.POSIXlt("2022-03-23 11:23:14")
myDateTime <- as.POSIXlt("2022-03-23 11:23:14", tz = "US/Pacific")
# I'll talk more about timezones in a later session

# just like Date, use formats to parse non-standard dates
as.POSIXlt("March 3, 2022", format = "%B %e, %Y")

# retrieve parts of a date in POSIXlt format
# Essentially, treat it like a list
myDateTime$year + 1900 # add 1900 for current year

unclass(myDateTime) # shows components of POSIXlt
?DateTimeClasses # for parts of POSIXlt
myDateTime$mon
myDateTime$mday

# date time math
myDateTime$year + 1900
myDateTime$year <- myDateTime$year + 1
myDateTime
myDateTime$mday <- myDateTime$mday + 31
myDateTime
myDateTime$hour <- 25 # set to 25 hours
myDateTime


# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates