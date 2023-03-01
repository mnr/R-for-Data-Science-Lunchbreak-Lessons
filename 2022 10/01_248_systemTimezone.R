# timezones and OlsonNames

as.POSIXlt("2022-03-23 11:23:14", tz = "US/Pacific")

# current system timezone
Sys.timezone()
# dependent on operating system
# system preferences - date & time

# time zone is stored in POSIXlt
myPLTDateTime <- as.POSIXlt(Sys.time())
unlist(myPLTDateTime)
myPLTDateTime$zone
myPLTDateTime$gmtoff

OlsonNames()
# database created by Arthur David Olson
match(Sys.timezone(), OlsonNames())
OlsonNames()[147]

# change time zone when object is created
myPLTDateTime <- as.POSIXlt(Sys.time(), tz = OlsonNames()[127])
unlist(myPLTDateTime)
myPLTDateTime$zone <- "PDT" #but that doesn't change the time, just TZ

# time zone trivia
Sys.getenv("TZDIR") # location of time zone databases

# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates
