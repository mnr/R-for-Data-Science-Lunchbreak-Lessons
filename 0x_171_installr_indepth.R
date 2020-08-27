# installr. what it is, how to install. How to use it to fix R_zipcmd

# installr is for Windows.
# Linux & Macintosh = not available

# install.packages("installr")
library(installr)

# there are ## categories in installr

# install.etc -------------------------------------------------------------
installr() # gui
install.7zip()
install.git()
install.github()
install.java()
install.R()
install.nodejs()


# Programming functions ---------------------------------------------------
is.integer(3)
str(3)
installr:::check.integer(3)
is.integer(3L)

# System utilities --------------------------------------------------------
is.windows() # which is odd, seeing how installr only runs under windows
myip()
# os.hibernate() - os commands from terminal


# Package trivia ----------------------------------------------------------
package_authors("base")
