# installr. what it is, how to install. How to use it to fix R_zipcmd

# installr is for Windows.
# Linux & Macintosh = not available

# install.packages("installr")
library(installr)

# there are roughly 4 categories in installr

# install.etc -------------------------------------------------------------
installr() # gui
install.7zip()
install.git()
install.github()
install.java()
install.R() # and updateR()
install.nodejs()


# Programming functions ---------------------------------------------------
is.integer(3) # why is this false?
str(3) # because 3 is stored as num
installr:::check.integer(3) # this is expected


# System utilities --------------------------------------------------------
is.windows() # which is odd, seeing how installr only runs under windows
is.x64()
myip()
# os.hibernate() - os commands from terminal
up_folder("this/that/whereami")
system.PATH() # os search path for exe


# Package trivia ----------------------------------------------------------
package_authors("base")


# more at https://github.com/talgalili/installr
# doc at https://talgalili.github.io/installr/reference