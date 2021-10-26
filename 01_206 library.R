# library(), require(), detach()

library(fun)
library(fun, verbose = TRUE)
library(fun, verbose = FALSE) # turn this warning off
library(help = "fun") # documentation for a package


# note difference between installed and loaded
library(nothere, logical.return = TRUE) # returns error if not installed

library() #available libraries

# check for FOSS
options("checkPackageLicense" = TRUE) # if true, interactive check for FOSS
getOption("checkPackageLicense") # if true, interactive check for FOSS

require(fun) # use in a function. Returns a logical listing success
require(nothere) # same as logical.return=true

detach() # unloads a package. Used to reload a package. most likely during development

