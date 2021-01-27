# Install R on a Raspberry Pi

# on a terminal
# sudo apt-get update
# sudo apt-get install r-base r-base-core

# fix the menu
# R appears in the Graphic Menu. To move it to the programming menu
# RPi menu -> Preferences -> main menu editor
# programming -> new item: Name=R, Command=R, Launch in terminal. OK
# Fix Icon: Rpi menu -> right click on R. 
#     Choose Properties. 
#     Click on Icon to bring up chooser. 
#     R logo is in system icons

# install gui
# Rstudio not available for Raspberry Pi (available for amd64, but not amdhf)
# Rgui not available for linux
# unable to install rcommander or rattle

# geany works
# wiki.geany.org/howtos/using_geany_with_r
# wiki.geany.org/howtos/configurebuildmenu

# this runs the R file in the geany terminal
# NOTE: file names cannot have spaces
# edit/preferences/terminal...[] execute programs in VTE
# build -> set build commands...execute: Rscript ./%f 

# this runs the R file as a batch command, output saved to .Rout in /home/pi or next to input file
# build -> set build commands...R CMD BATCH: R CMD BATCH ./%f

# Geany terminal can be used to run R
# enter Geany terminal, then type R to start R
# also install packages
# install.packages("cowsay")

library(cowsay)

# say("Hello world")

# plot(x = 1:10, y = 10:1)

# controlling the GPIO
hellobob <- system("pwd", intern=TRUE)
print(paste("here i am", hellobob))

doExampleOne <- TRUE
#### Example 1 #################################
# assign buttons
btnAlpha <- 15 # BCM numbering scheme
btnGamma <- 14


while (doExampleOne) {
  getGPIOcmd <- paste("gpioget gpiochip0", btnAlpha)
  if (system(getGPIOcmd, intern = TRUE) == 0) print("Alpha")
  getGPIOcmd <- paste("gpioget gpiochip0", btnGamma)
  if (system(getGPIOcmd, intern = TRUE) == 0) print("Gamma")
  
}
# control-Z stops the loop

#### Example 2 ##################################
# assign buttons as a vector
allBtns <- c(15,14)

while (!doExampleOne) {
  getGPIOcmd <- paste("gpioget --active-low gpiochip0 ", paste(allBtns, collapse= " "))
  #whatIsThis <- system(getGPIOcmd, intern = TRUE)
  #whatIsThis
  pinState <- system(getGPIOcmd, intern = TRUE)
  gpioPins <- as.integer(unlist(strsplit(pinState, " ")))
  if (any(gpioPins)) { 
    print(paste("a=",gpioPins[1]," b=",gpioPins[2]))
  }
  if (all(gpioPins)) {
    print("all buttons are pressed")
  }
  if (!any(gpioPins)) {
    print("no buttons are pressed")
  }
  
}
