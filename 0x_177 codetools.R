# codetools

library(codetools)


badFunction <- function() {
  blerb = 3 # defined, but never used
  athing * 2 # "athing" never defined
  notAfunc(23) # "notAfunc" never defined
}

checkUsage(badFunction)

checkUsagePackage("base")


