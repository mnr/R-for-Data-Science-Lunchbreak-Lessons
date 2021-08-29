# library(), require(), detach()

# setup for error
remove.packages("cowsay")

library(fun)
library(fun, verbose = TRUE)
library(help = "fun") # documentation for a package
library(cowsay, logical.return = TRUE) # returns error if not installed
library() #available libraries

# check for FOSS
getOption("checkPackageLicense") # if true, interactive check for FOSS

require(fun) # use in a function. Returns a logical listing success
require(cowsay) # same as logical.return=true

detach() # unloads a package. Used to reload a package. most likely during development
