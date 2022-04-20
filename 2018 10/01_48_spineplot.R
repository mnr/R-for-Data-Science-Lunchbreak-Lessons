# example files for LinkedIn Learning course: https://linkedin-learning.pxf.io/rweekly_spineplot
# Description: Example file for spineplot

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_spineplot" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- "spineplot()" 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

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


