# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: install R v 5.0

# main idea: upgrade your version of R to 5.0

Note to MNR: # Later this year Andrea and I intend to merge the updateR package into installr
  # so that the updateR function will work seamlessly in both Windows and Mac.
  

# Macintosh -------------------------------------------------------
install.packages("devtools")
devtools::install_github("AndreaCirilloAC/updateR") 
updateR(admin_password = "PASSWORD") # Where "PASSWORD" stands for your system password


# Windows -----------------------------------------------------------------

# Open this file in Rgui
install.packages("installr")
updateR()


