# Use droplevels() to simplify factors	Learners will be able to remove
# unnecessary levels from factors. Learning to remove levels from factors is a
# way to better understand how to use Factors.


# factors are a way to associate numbers with key phrases
someFactors <- as.factor( c("Apple", "Apple", "Banana", "Cherry"))

table(someFactors)
levels(someFactors)
plot(someFactors)

# suppose we remove the banana
# for example, we're only interested in red fruits
someFactors[3] <- NA

# no values for bananas - but that level still appears
table(someFactors)
levels(someFactors)
plot(someFactors)

# use droplevels to get rid of unused factors
nobananas <- droplevels(someFactors)

table(nobananas)
levels(nobananas)
plot(nobananas)
