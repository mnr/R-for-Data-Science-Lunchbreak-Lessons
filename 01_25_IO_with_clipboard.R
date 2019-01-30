# Exercise file for linkedin learning at https://linkedin-learning.pxf.io/rweekly_clipboard
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

