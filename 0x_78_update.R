# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: update your copy of R

# best to do this from R - NOT RStudio

# for windows
install.packages("installr") 
library(installr)
updateR()

# for macintosh
install.packages('devtools') #assuming it is not already installed
library(devtools)
install_github('andreacirilloac/updateR')
library(updateR)
updateR(admin_password = 'Admin user password')


# What happens when packages are copied from old directory to new?
# - copied to new directory
# - option to delete old packages
# - option to update new packages
# Do you wish to keep these packages? 
# answer: depends on your work environment. Possibly some packages won't work with new R
