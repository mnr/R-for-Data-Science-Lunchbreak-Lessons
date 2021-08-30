#install.packages

# pkgs is optional, but must be a character vector
install.packages(cowsay) # doesn't work
install.packages("cowsay")
#...or...
installThese <- c("cowsay")
install.packages(installThese)
# and can install multiple packages
installThese <- c("cowsay", "fun")

mypkgs <- installed.packages() # which packages are installed
find.package("cowsay") # returns an error. Use try-catch to trap

install.packages() # missing "pkgs=" brings up a list

install.packages(pkgs="cowsay", quiet = TRUE) # turns off progress report


