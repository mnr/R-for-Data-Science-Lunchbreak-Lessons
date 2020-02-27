# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: sub and gsub
# affiliate: https://linkedin-learning.pxf.io/rweekly_subgsub

someText <- c("Twas brillig and the slithey toves", "did gyre and gimble in the wabes")
sub("a", "-", someText) # replaces only the first occurance in each element
gsub("a", "-", someText) # replaces all (global)

sub("and", "AND", someText) # works for any pattern

gsub("i.", "-", someText, perl = TRUE) # perl compatible regex

gsub("i(.)", "-\\1-", someText, perl = TRUE) # use backreferences


