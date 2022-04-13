# as.POSIXct

# Date is only date.
# POSIXlt and POSIXct are date & time
# POSIXlt and POSIXct are related
# POSIXlt stores date/time as components (Years, Days, Months, Hours...)
# POSIXct stores date/time as seconds since 1970-01-01 00:00:00 UTC

as.POSIXct("2022-03-23")
str(as.POSIXct("2022-03-23"))

myDateTime <- as.POSIXct("2022-03-23 11:23:14")
myDateTime <- as.POSIXlt("2022-03-23 11:23:14", tz = "US/Pacific")
# I'll talk more about timezones in a later session

as.numeric(myDateTime) # seconds since 1970-01-01 00:00:00 UTC

as.POSIXct("March 3, 2022  11:23:14", format = "%B %e, %Y %H:%M:%S")

# date math...
# subtract seconds.
myDateTime - (24 * 60 * 60) # what was yesterday?

# need year, month, hour, etc...
# convert to POSIXlt
PltMyDateTime <- as.POSIXlt(myDateTime)
PltMyDateTime$year + 1900

# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates