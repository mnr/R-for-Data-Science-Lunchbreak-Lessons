# getwd setwd

# what is a working directory?

# if you ask for a relative file, R will start in the working directory

# fails because working directory is home director
if (file.exists(".RData")) {print("this file exists")}
# more...set working directory

# how to check this
getwd() # returns current working directory

basename(getwd())

dirname(getwd())

setwd("~") # tilde is shorthand for home directory

