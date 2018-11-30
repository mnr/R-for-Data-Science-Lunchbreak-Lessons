# example files for LinkedIn Learning course: https://linkedin-learning.pxf.io/rweekly_spineplot
# Description: Example file for spineplot

# main idea: creating spineplots
# width of bars = frequency of X
# height of bars = frequency of y

# Y must be a factor and is the dependent variable
spineplot(ChickWeight$weight, ChickWeight$Diet) # spineplot(x,y)

# interesting observations
# Height of bars indicates obs per diet. Diet 1 has more obs
# Width of bars indicates obs per weight. More chicks are weighed between 50 and 100

# or...

spineplot(Diet ~ weight, data = ChickWeight) # spineplot(y ~ x)

# bells and whistles

spineplot(Diet ~ weight, 
          data = ChickWeight,
          breaks = fivenum(ChickWeight$weight),
          col = c(5:8),
          xlab = "Chicken Weight",
          ylab = "Chicken Diet")

# The above is actually a spinogram - like a histogram
# example of a true spine plot. Both x and y must be factors
spineplot(Diet ~ factor(weight), 
          data = ChickWeight, 
          col = c(5:8))

spineplot(factor(weight) ~ Diet, 
          data = ChickWeight,
          col = c(1:nlevels(factor(ChickWeight$weight))))

# subset of data
# use the 1st half of data. Would make sense to have a more sophisticated selection
spineplot(Diet ~ factor(weight), 
          data = ChickWeight, 
          subset = c(1:(578/2)),
          drop.unused.levels = TRUE,
          col = c(4:7)
)


