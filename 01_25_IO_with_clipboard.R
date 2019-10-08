# Exercise file for linkedin learning at https://linkedin-learning.pxf.io/rweekly_clipboard
# Description: I/O with the clipboard

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_clipboard" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("clipboard", "clipr", "read_clip()", "write_clip()", "readClipboard()", "writeClipboard()", "psych", "read.clipboard()") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

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

