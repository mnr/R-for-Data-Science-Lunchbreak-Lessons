# A selection of functions for beta and gamma functions

# start with beta
mmm <- 3
nnn <- 4
beta(mmm,nnn)
beta(mmm,nnn) == factorial(mmm - 1) * factorial(nnn - 1) / factorial(mmm + nnn - 1)

# gamma
gamma(mmm)
gamma(nnn)
beta(mmm,nnn) == gamma(mmm) * gamma(nnn) / gamma(mmm + nnn)

# natural logarithm of functions
lbeta(a, b)
lgamma(x)

# first and second derivatives
digamma(mmm)
trigamma(mmm)

# other derivatives
psigamma(mmm, deriv = 0) 
psigamma(mmm, deriv = 0 ) == digamma(mmm)
psigamma(mmm, deriv = 1 ) == trigamma(mmm)

# more details
?Special