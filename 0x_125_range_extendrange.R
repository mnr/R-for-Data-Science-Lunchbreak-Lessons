# Use range() and extendrange() to analyze and manipulate groups of
# numbers	range is easy and useful – get the minimum and maximum of a dataset.


aVector <- 1:23

range(aVector)

# Similar to...
fivenum(aVector)

# also similar to...
min(aVector)
max(aVector)

# Extendrange is less easy – enlarge the range by a certain percentage.
# Extending the breadth of a numerical range is essential for forecasting.

extendrange(aVector) # vector +/-
extendrange(avector, r = c(0,30))

# suppose you wanted to forecast an increase in spread of 10% per year
extendBy <- .1
extendrange(aVector, f = extendBy)
# in long form... 
min(aVector) - ((range(aVector)[2] - range(aVector)[1]) * extendBy)
max(aVector) + ((range(aVector)[2] - range(aVector)[1]) * extendBy)

# so...spread =
range(aVector)[2]- range(aVector)[1]

forecastGrowth <- function(theYear) {
  if (theYear <= 2020) { return(range(aVector))}
  fractionRange <- (theYear - 2020) * .1
  return(extendrange(aVector, f = fractionRange))
}
forecastGrowth(2020)
forecastGrowth(2021)
forecastGrowth(2030)
