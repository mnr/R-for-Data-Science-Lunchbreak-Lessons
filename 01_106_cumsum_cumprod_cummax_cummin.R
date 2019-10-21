# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: cumulative operators

# cumulative summation
cumsum(1:3) # 1 + 2 + 3 = 6

cumsum(1,2,3) # nope. has to be one arguement

cumsum(c(1:3)) # return value matches length of input value

cumsum(c(1,2,3,NA,4)) # NA interrupts the sum


# cumprod just like cumsum
cumprod(1:3)

# cummin and cummax behave as expected
cummin(1:3)
cummax(1:3)

cummax(c(1:3,2))
cummax(c(1:3,NA)) # NA prohibits further evaluation

# A plot to see the relationship
myVector <- 1:20
myVectorcumSum <- cumsum(myVector)
randomMyVector <- sample(myVector,length(myVector) )

plot(myVectorcumSum, type = "l")
lines(cummax(randomMyVector))
points(myVector)
text(x = length(myVector), y = c(max(myVector),max(myVectorcumSum)), 
     labels = c("cummax", "cumsum"), 
     adj = c(1,0))
