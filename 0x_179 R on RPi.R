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


# install Rcommander
# https://socialsciences.mcmaster.ca/jfox/Misc/Rcmdr
# start R as sudo - THIS IS IMPORTANT
# sudo R
install.packages("Rcmdr")