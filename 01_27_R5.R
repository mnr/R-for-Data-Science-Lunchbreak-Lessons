# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: install R v 5.0

# main idea: upgrade your version of R to 5.0

install.packages("installr") # Macintosh users. If you see "Warning in install.packages" look below
library(installr)
updateR()

# Macintosh (in case of "Warning in install.packages") -------------------------------------------------------
install.packages("devtools")
devtools::install_github("AndreaCirilloAC/updateR") 
library(updateR)
updateR(admin_password = "PASSWORD") # Where "PASSWORD" stands for your system password

