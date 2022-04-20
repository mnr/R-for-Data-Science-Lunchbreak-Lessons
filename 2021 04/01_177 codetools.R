# codetools

library(codetools)


badFunction <- function(aye = 3, bee) {
  bee = 5 # formal variable assignment
  blerb = 3 # defined, but never used
  athing * 2 # "athing" never defined
  notAfunc(23) # "notAfunc" never defined
}

checkUsage(badFunction, all = TRUE)

checkUsagePackage("base")


