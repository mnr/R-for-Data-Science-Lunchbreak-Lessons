# seq.Date and dates

seq(from = Sys.Date(), by = "month", length.out = 3)
seq(from = Sys.Date(),  by = "day", to = (Sys.Date() + 5) )
seq(from = Sys.Date(),  by = "+3 day", to = (Sys.Date() + 5) )

# along.with practical example
tripDestination <- c("Taj Mahal", "New Delhi", "Mumbai", "Bir Billing", 
                     "Kerala", "Rajasthan", "Rishikesh", "Amritsar",
                     "Varanasi")
tripDate <- seq(from = Sys.Date(), by = "day", along.with = (tripDestination))

names(tripDate) <- tripDestination 

tripDate

# also by week, quarter and year

# for more on dates and times in R...
# https://linkedin-learning.pxf.io/r_dates
