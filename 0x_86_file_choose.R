# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: file.choose, choose.files, list.files

# file access commands
# some are only for windows
# some are interactive

# this may not work from a command line
file.choose() # interactively choose one file

# this is only available for windows
choose.files() # interactively choose multiple files (shift and control modifiers)
# lots of options for controlling which file is selected

# save a list of files in current directory
filesInThisDirectory <- list.files()
filesInThisDirectory[3]

list.files("../") # list the parent directory
list.files(pattern = ".*.R$") # only list files ending in .R
list.files(full.names = TRUE) # relative pathnames
# and more...

# list directories
list.dirs()
# with additional parameters, similar to list.files

# choose a directory (only for windows)
choose.dir()