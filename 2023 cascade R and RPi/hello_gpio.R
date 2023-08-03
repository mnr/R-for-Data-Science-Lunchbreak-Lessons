# assign buttons 
TRYME_btn <- 21 # BCM numbering scheme 

while (TRUE) { 
  getGPIOcmd <- paste("gpioget -l gpiochip0", TRYME_btn) 
  if (system(getGPIOcmd, intern = TRUE) == 0) print("Try Me!") 
} # control-Z stops the loop