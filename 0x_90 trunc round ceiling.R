# round, ceiling, trunc

# NOTE: needs explaining...

someFractions <- c(3, 3.1, 3.15, 3.5, 3.7, 3.75, 4)
floor(someFractions)
round(someFractions)
round(someFractions, digits = 1)
ceiling(someFractions)
trunc(someFractions)
as.integer(someFractions)
signif(someFractions, digits = 1)