#lattice vs base graphics - introduction

# R has three graphics environments:
# 1) base R: i.e. plot, barplot, boxplot, cdplot, coplot, 
#            dotchart, fourfoldplot, heatmap, hist(), matlines
#            matplot, mosaicplot, pie, spineplot, stemplot,
#            stripchart, sunflowerplot
# 2) ggplot: an external package for grammar of graphics. VERY popular
# 3) lattice: included with R. Faster than ggplot, 
#             better awareness of output device

# ...but in the end, it may be subjective and personal preference.

# let's look at a comparison task between base R and Lattice
# I'm keeping these examples simple and ignoring lots of customization options

head(ChickWeight, 15) # let's use Chickweight data set as an example
# question: what is average weight for each day?
cw_mean <- aggregate(ChickWeight, by = list(ChickWeight$Time), mean)
# warnings are from NA


# how to do it in base R

plot(cw_mean$Time, cw_mean$weight,
     ylab = "Weight", xlab = "Days",
     type = "l")


# how to do it in lattice

library(lattice)
xyplot( weight ~ Time, 
        data = cw_mean,
        type = "l")


# note the use of formula instead of "x =" and "y="
