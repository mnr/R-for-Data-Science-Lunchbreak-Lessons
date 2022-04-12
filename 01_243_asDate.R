# as.Date

# just a date. Date + Time will come later

# convert a string to a "date" class
as.Date("2022-03-23")
str(as.Date("2022-03-23"))

# add one day
as.Date("2022-03-23") + 1 

# use format for non-standard date strings
as.Date("March 3, 2022")
as.Date("March 3, 2022", format = "%B %e, %Y")

# formats in strftime()
?strftime

# what about mixed formats?
someDates <- c("March 3, 2022", "March 23, 2022" )
as.Date(someDates) #fails
as.Date(someDates, tryFormats = c("%B %e, %Y", "%Y-%m-%d", "%F"))

someDates <- c("2022-03-23", "2022-04-23" )
as.Date(someDates, tryFormats = c("%B %e, %Y", "%Y-%m-%d", "%F"))

# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates