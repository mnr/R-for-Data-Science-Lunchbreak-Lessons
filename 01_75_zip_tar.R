# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: zip, unzip, tar, untar


# zip ---------------------------------------------------------------------

# compressing with zip may not work on windows if no zip program available
# this should return a path to a zip command
# if it doesn't, this command won't work.
# You'll need to install a zip program
Sys.getenv("R_ZIPCMD") 

# make sure current directory is exercise files
zip("aZipFile.zip", "01_01_builtin.R") # one file

unzip("aZipFile.zip") # this works on windows because of a zip file included in R
unzip("aZipFile.zip", list = TRUE) # lists contents of zip file


# tar ---------------------------------------------------------------------

# R has an internal implementation of tar so this will always work
# tar is happiest when compressing an entire directory
tar("aTarFile.tar")

untar("aTarFile.tar", list = TRUE)


