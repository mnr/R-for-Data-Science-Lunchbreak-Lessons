# Plumber routers and filters

library(plumber)

#* @api Title Simple plumber exercise file
#* @apiDescription Provided as part of LinkedIn Learning: R for Data Science, lunchbreak lessons

#* simple manipulation of input
#* @param this a string to UPPERCASE
#* @param that a string to count
#* @get /changeStrings
simpleFunction <- function(this, that) {
  paste(toupper(this), nchar(that) )
}

