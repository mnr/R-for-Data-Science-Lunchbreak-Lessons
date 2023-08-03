# assign buttons (use BCM - not board)
getGPIOcmd <- "gpioget gpiochip0 21"

# assign control pin (use BCM)
setGPIOcmd_on <- "gpioset gpiochip0 9=1"
setGPIOcmd_off <- "gpioset gpiochip0 9=0"

while (TRUE) {
  if (system(getGPIOcmd, intern=TRUE) == 1) print ("Try Me!")
  
  system(setGPIOcmd_on)
  Sys.sleep(1)
  system(setGPIOcmd_off)
  Sys.sleep(3)
}