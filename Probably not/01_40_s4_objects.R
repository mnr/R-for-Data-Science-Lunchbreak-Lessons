# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for S4 objects

# main idea: More about S4 objects
# builds on example file 01_39_s3_vs_s4 - requires one_temperature object from that file

# default methods: show, print, plot. You don't need to "setGeneric" to define these

# show is for console. print is for pretty formatting
setMethod("show", 
          signature = "one_temperature",
          definition = function(object){cat("The temperature is", 
                                            object@temperature,
                                            "degrees",
                                            object@scale)})
s4_airTemp # example of show

setMethod("print", 
          signature = "one_temperature",
          definition = function(x){cat("This is so pretty!",
                                            "The temperature is", 
                                            x@temperature,
                                            "degrees",
                                            x@scale)})
print(s4_airTemp)

setMethod("plot", 
          signature = "one_temperature",
          definition = function(x){plot(x@temperature)})
plot(s4_airTemp)

# Showing "Slots" of an object
getSlots("one_temperature")
slotNames("one_temperature")
getClass("one_temperature")

# Show methods of a class
showMethods(class = "one_temperature") # class

# more info at...
# http://adv-r.had.co.nz/S4.html
# https://cran.r-project.org/doc/contrib/Genolini-S4tutorialV0-5en.pdf
