# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: bitwise operators

# bitwise operators are included in R, but mostly for compatibility with other languages.
# microbenchmark indicates this is significantly slower than the normal operator
# what are bitwise operators?

intToBits(8) # = 00 00 00 01
intToBits(1) # = 01 00 00 00

# normal binary notation for eight would be 00 00 10 00. 
# least significant bit on right (same as western arabic numbering)
# R reverses the nibbles of the bytes and the most/least significant bit order
# byte = 8 bits
# nibble = 1/2 byte

bitwAnd(8,1) # = 00 00 00 00 = 0
bitwOr(8,1)  # = 01 00 00 01 = 9
bitwXor(8,1) # = 01 00 00 01 = 9

intToBits(8) # = 00 00 00 01
intToBits(15)# = 01 01 01 01
bitwXor(8,15)# = 01 01 01 00 = 7

bitwShiftL(8, 1) # = 16 = x*2
bitwShiftL(8, 2) # = 32 = x*4
bitwShiftR(8, 1) # = 4  = x/2


# are bitwise operators faster? -------------------------------------------

library(microbenchmark)

microbenchmark(
  bitwShiftL(2000000,6), # median = 1539 nanoseconds
  2000000 * 64,          # median = 1 nanosecond
  times = 1000
)

# answer...probably not
