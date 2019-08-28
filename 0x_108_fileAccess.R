# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 


file.access(".RData1") 
# NOTE: 0 if true, -1 if false
# Which is not what you might expect. Normally 1 is success or true. 0 if false or fail.

# how to use...
if(file.access(".RData") == 0) {
  print("I've found .RData!!")
} else {
  print("Ouch. Something isn't working")
}


# mode
# 0 = test for existence
# 1 = test for execute permission
# 2 = test for write permission
# 4 = test for read permission (Hey - why not 3?)

file.access(".RData", mode = 4) # Yep. We can read this
file.access(".RData", mode = 1) # Nope. can't execute this

# do you want to test for read AND write permission?
# remember bitwXor from the session on bitwise?
file.access(".RData", mode = bitwXor(2,4))


