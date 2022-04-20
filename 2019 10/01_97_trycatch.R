# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: trycatch to catch errors
# affiliate: https://linkedin-learning.pxf.io/rweekly_trycatch

# Use trycatch when doing something that might fail, but you can fix
# Error trapping is polite code

# this breaks because "Not_here" is missing
read.table("Not_here") # error - cannot open file 'Not_here': No such file or directory

# this flags the error with some sort of warning message
tryCatch(read.table("Not_here"), 
         error = function(e) {sprintf("The error is %s!", e)},
         warning = function(w) {sprintf("Warning...Warning...%s!!!", w)},
         message = function(m) {print("Got a message")}, 
         interrupt = function(i) {print("Interrupted")}, 
         condition = function(c) {print("condition!")}
         )

# this fixes the problem, then retries
GetMyFile <- function() {
  tryCatch(read.table("Not_here"), 
         error = function(e) e ,
         warning = function(w) {
           write.table(ChickWeight, file = "Not_Here")
           GetMyFile()
           })
}
GetMyFile()
