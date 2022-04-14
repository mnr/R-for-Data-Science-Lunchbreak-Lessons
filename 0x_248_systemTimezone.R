# timezones and olsonnames

# current system timezone
Sys.timezone()
# dependent on operating system
# system preferences - date & time

# time zone is stored in POSIXlt
myPLTDateTime <- as.POSIXlt(Sys.time())
unlist(myPLTDateTime)
myPLTDateTime$zone
myPLTDateTime$gmtoff  

# time zone trivia
Sys.getenv("TZDIR") # location of time zone databases

OlsonNames()
# database created by Arthur David Olson
match(Sys.timezone(), OlsonNames())
OlsonNames()[147]


# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates
