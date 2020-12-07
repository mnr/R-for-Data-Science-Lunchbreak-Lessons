# Install R on a Raspberry Pi

# on a terminal
# sudo apt-get update
# sudo apt-get install r-base r-base-core

# fix the menu
# R appears in the Graphic Menu. To move it to the programming menu
# RPi menu -> Preferences -> main menu editor
# programming -> new item: Name=R, Command=R, Launch in terminal. OK
# Fix Icon: Rpi menu -> right click on R. Choose Properties. Click on Icon to bring up chooser

# install gui
# Rstudio not available for Raspberry Pi (available for amd64, but not amdhf)
# Rgui not available for linux
# unable to install rcommander or rattle

# geany works
# wiki.geany.org/howtos/using_geany_with_r
# wiki.geany.org/howtos/configurebuildmenu

# this runs the R file in the geany terminal
# edit/preferences/terminal...[] execute programs in VTE
# build -> set build commands...execute: Rscript ./%f 

# this runs the R file as a batch command, output saved to .Rout in /home/pi or next to input file
# build -> set build commands...R CMD BATCH: R CMD BATCH ./%f

# Geany terminal can be used to run R
# also install packages
# install.packages("cowsay")
library(cowsay)
say("Hello world")