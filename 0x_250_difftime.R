# difftime - time intervals

Y2K <- as.POSIXct("2000-01-01 00:00:00")
todayIs <- Sys.time()

# what happens when you subtract two dates -------
todayIs - Y2K
sinceY2K <- todayIs - Y2K
todayIs + Y2K # fyi - addition doesn't work

# difftime command -------
difftime(todayIs, Y2K)
difftime(todayIs, Y2K, units = "hours")
fromTodayToY2K <- difftime(todayIs, Y2K, units = "hours")
fromTodayToY2K
# secs, mins, hours, days, weeks

# creating difftime objects -----
as.difftime(1, units = "days")
as.difftime(1, units = "weeks")
as.difftime(1, units = "months") # doesn't work because months vary in length

oneWeek <- as.difftime(1, units = "weeks")
todayIs - oneWeek

# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates
