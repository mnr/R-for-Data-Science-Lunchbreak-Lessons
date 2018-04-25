# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: I/O with the clipboard

# main idea: retrieving and stashing to the clipboard from R

# Use the clipr package ---------------------------------------------------

install.packages("clipr")
library(clipr)

read_clip()
write_clip("Twas brillig and the slithey toves")
acliptable <- read_clip_tbl() # for spreadsheets


# If you’re on windows ----------------------------------------------------

readClipboard()
writeClipboard("Avast, ye mateys")


# Another option: Try the psych package ---------------------------------------------------

install.packages("psych") # takes some time to load
library(psych)

# create a spreadsheet, export to csv, open in text editor, select & copy
read.clipboard(sep = ",") # note the use of pbpaste


# The below methods aren’t reliable -------------------------------------------

# with X11
file(description = "clipboard", open = "r") # open mode = "r" only

# MacOS
pipe("pbpaste")
pipe("pbcopy", "w")

read.table(file = "clipboard")

