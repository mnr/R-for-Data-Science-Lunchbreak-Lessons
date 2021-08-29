#install.packages

# pkgs is optional, but must be a character vector
install.packages(cowsay) # doesn't work
install.packages("cowsay")
#...or...
installThese <- c("cowsay")
install.packages(installThese)
# and can install multiple packages
installThese <- c("cowsay", "fun")

install.packages() # missing "pkgs=" brings up a list

install.packages(pkgs="cowsay", quiet = TRUE) # turns off progress report
