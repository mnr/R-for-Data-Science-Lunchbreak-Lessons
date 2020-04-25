# diff - return lagged and iterated differences


vector1 <- c(2, 4, 3, 6, 5, 10, 9, 18)

# if x is a vector
# n <- length(x)
# differences <- 1
# diff does this... x[(1+lag):n] - x[1:(n-lag)]

diff(vector1, lag = 2)

plot(vector1, type = "l", lwd = 5)
lines(diff(vector1, lag = 2), col="Red", lwd = 5)
# n = 8
# lag = 2
# n-lag = 6
# Which is...
# vector1[3] - vector1[1] ==  3 - 2 = 1
# vector1[4] - vector1[2] ==  6 - 4 = 2
# vector1[5] - vector1[3] ==  5 - 3 = 2
# vector1[6] - vector1[4] == 10 - 6 = 4
# vector1[7] - vector1[5] ==  9 - 5 = 4
# vector1[8] - vector1[6] ==  18 - 10 = 8

# the "difference" argument is how many recursions to perform
diff(vector1, lag = 2, difference = 2)
lines(diff(vector1, lag = 2, difference = 2), col="Green", lwd = 5)

# using x[(1+lag):n] - x[1:(n-lag)]
# which results in the above, and produces 1, 2, 2, 4, 4, 8
# recursively, x[(1+lag):n] - x[1:(n-lag)]
# n = 6
# lag = 2
# n-lag = 4
# then...
# x = c(1, 2, 2, 4, 4, 8)
# n = length(x) = 6
# lag = 2
# n - lag = 4
# diffResult[1 + 2 = 3] - diffResult[1] == 2 - 1 = 1
# diffResult[4] - diffResult[2] == 4 - 2 = 2
# diffResult[5] - diffResult[3] == 4 - 2 = 2
# diffResult[6] - diffResult[4] == 8 - 4 = 4


diff(vector1, lag = 2, difference = 3)
lines(diff(vector1, lag = 2, difference = 3), col="Blue", lwd = 5)

# 1st recursive = 1, 2, 2, 4, 4, 8
# 2nd recursive = 1, 2, 2, 4
# 3rd recursive...
# 2ndRecursive[1 + 2] - 2ndRecursive[1] == 2 - 1 = 1
# 2ndRecursive[4] - 2ndRecursive[2] == 4 - 2 = 2
