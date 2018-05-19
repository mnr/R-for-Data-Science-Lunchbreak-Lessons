# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Using R at the command line

if (interactive()) {print("I'm interactive")} else {print("I'm in batch")}

# reading arguments
args=(commandArgs(TRUE))


# hello world - just to demonstrate this program is alive
print("Hello")

# Here's how to read from stdin. 
# Rscript thisprog.r < sampletext.txt

standardIn <- file('stdin', 'r')

oneLine <- readLines(standardIn, n = 1)

while( length(oneLine) > 0 ) {
  # cat("a row:", oneLine, "\n")
  
  # Here's how to write to stdout
  # Don't forget to redirect the output. i.e. > output.txt
  write(toupper(oneLine),"")
  
  # read the next line and return to top of while loop
  oneLine <- readLines(standardIn, n = 1)
}


# plots and graphics are sent to disk
plot(1:40,40:1)

