# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: bitwise operators

# what are bitwise operators?

intToBits(8) # = 00 00 00 01
intToBits(1) # = 01 00 00 00
bitwAnd(8,1) # = 00 00 00 00 = 0
bitwOr(8,1)  # = 01 00 00 01 = 9
bitwXor(8,1) # = 01 00 00 01 = 9

intToBits(8) # = 00 00 00 01
intToBits(15)# = 01 01 01 01
bitwXor(8,15)# = 01 01 01 00 = 7

bitwShiftL(8, 1) # = 16 = x*2
bitwShiftL(8, 2) # = 32 = x*4
bitwShiftR(8, 1) # = 4  = x/2


