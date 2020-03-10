# diff - return lagged and iterated differences

vector1 <- 1:10
vector2 <- c(2, 4, 8, 16, 32, 64, 128)
vector3 <- c(2, 4, 3, 6, 5, 10, 9, 18)

diff(vector1, lag = 2)
diff(vector2, lag = 1)
diff(vector3, lag = 1)
plot(diff(vector3, lag = 1), type = "l")

diff(vector3, lag = 1, differences = 2)
