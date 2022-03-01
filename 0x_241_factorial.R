# factorial

# note: there are a selection of functions for
# beta and gamma functions
?Special

beta(a, b)
lbeta(a, b)

gamma(x)
lgamma(x)
psigamma(x, deriv = 0)
digamma(x)
trigamma(x)

choose(n, k)
lchoose(n, k)
factorial(x)
lfactorial(x)

n <- 3 # for an n x n matrix
factorial(n) # provides the number of permutations
plot(factorial(1:5), type = "l")
plot(gamma(1:5), type = "l")
