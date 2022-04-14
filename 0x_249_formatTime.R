# output date time objects

# create a date time object
myDateTime <- Sys.time()

# output the object in a different form
format(myDateTime, format = "%Y...%d")
format(myDateTime) # default format

# strftime is essentially the same as format
strftime(myDateTime, format = "%Y...%d")

# some built-in standards
format(myDateTime, format = "%c") # "%a %b %e %H:%M:%S %Y"
format(myDateTime, format = "%D") # %m/%d/%y
format(myDateTime, format = "%F") # %Y-%m-%d (ISO 8601) 
format(myDateTime, format = "%r") # %I:%M:%S %p
format(myDateTime, format = "%R") # %H:%M
format(myDateTime, format = "%T") # %H:%M:%S
format(myDateTime, format = "%x") # depends on system location
format(myDateTime, format = "%X") # depends on system location
format(myDateTime, format = "%Z") 

# format(myDateTime, format = "%Z") 
myPltDateTime <- as.POSIXlt(Sys.time())
unlist(myPltDateTime)
myPltDateTime$zone

format(myDateTime, format = "%OS3") # seconds with n decimal places
format(myDateTime, format = "%OS5") 


# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates
