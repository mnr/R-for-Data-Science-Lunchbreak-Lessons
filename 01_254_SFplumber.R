#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)

#* @apiTitle Simple plumber exercise file
#* @apiDescription Provided as part of LinkedIn Learning: R for Data Science, lunchbreak lessons

# saved as 01_254_SFplumber.r
#* simple manipulation of input
#* @param this a string to UPPERCASE
#* @param that a string to count
#* @get /changeStrings
simpleFunction <- function(this, that) {
  paste(toupper(this), nchar(that) )
}