# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for S3 vs S4 objects

# main idea: What are S3 objects? What are S4 objects?

# S3 allows use of class on any object just by setting "class" attribute
s3_airTemp <- list("temperature" = 32, "scale" = "farenheit")
s3_airTemp$temperature
s3_airTemp <- list("temperature" = "thirty-two", "scale" = 27) # values don't respect class
class(s3_airTemp) <- "numeric" # change class from "list" to "numeric"
# produces warning - but s3 lets you do it

# S4 formally defines representation and inheritance. 
check_scale <- function(object) {
  # function to check validity of temperature scales
  tempscales <- c("farenheit", "celsius", "kelvin")
  if (tolower(object@scale) %in% tempscales) TRUE else "scale is not valid"
}

# S4 requires use of "setclass"
setClass("one_temperature", 
         representation(temperature = "numeric", scale = "character"), 
         validity = check_scale,
         prototype(temperature = NA_integer_ , scale = "Farenheit")
         )

# use setGeneric followed by setMethod to create a method for the class
setGeneric("isWaterFreezing",
           function(object) {
             standardGeneric("isWaterFreezing")
           })
setMethod("isWaterFreezing",
          signature = "one_temperature",
          definition = function(object) {
            lc_scale <- tolower(object@scale)
            if(lc_scale == "farenheit" && object@temperature <= 32) {
              TRUE 
            } else if(lc_scale == "celsius" && object@temperature <= 0) {
              TRUE
            } else if(lc_scale == "kelvin" && object@temperature <= 273 ) {
              TRUE
            } else FALSE
          }
        )
# it would be better to create versions of "isWaterFreezing" to recognize farenheit, celsius and kelvin
# but that's beyond a five minute exercise.

# S4 requires the use of "new"
s4_airTemp <- new("one_temperature", temperature = 32, scale = "farenheit")
s4_airTemp <- new("one_temperature", temperature = 32)

isWaterFreezing(s4_airTemp)

str(s4_airTemp) # shows the structure of the object

s4_airTemp <- new("one_temperature", temperature = 32, scale = "bob") # invalid value for "scale"
s4_airTemp <- new("one_temperature", temperature = "thirty-two", scale = 27)  # invalid class
class(s4_airTemp) <- "numeric" # Error: cannot coerce type 'S4' to vector of type 'double'


# S4 also supports generic functions, method dispatch, inheritance