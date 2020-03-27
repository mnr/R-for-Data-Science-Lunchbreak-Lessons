#lattice vs base graphics - introduction
# reference: trellis user guide - http://www.stat.purdue.edu/~lshu/documents/R_helps/trellis.manual.pdf
# gallery: http://lmdvr.r-forge.r-project.org/figures/figures.html
# another explanation: https://www.stat.auckland.ac.nz/~ihaka/787/lectures-trellis.pdf

# R has three graphics environments:
# 1) base R: i.e. plot, barplot, boxplot, cdplot, coplot, 
#            dotchart, fourfoldplot, heatmap, hist(), matlines
#            matplot, mosaicplot, pie, spineplot, stemplot,
#            stripchart, sunflowerplot
# 2) ggplot: an external package for grammar of graphics. VERY popular
# 3) lattice: included with R. Faster than ggplot, 
#             better awareness of output device. 
#             includes: barchart, bwplot, densityplot, dotplot,
#             histogram, qqmath, stripplot, qq, xyplot
#             levelplot, contourplot, cloud, wireframe, splom,
#             parallel, rfs, tmd

# ...but in the end, it may be subjective and personal preference.

# let's look at a comparison task between base R and Lattice
# I'm keeping these examples simple and ignoring lots of customization options

head(ChickWeight, 15) # let's use Chickweight data set as an example
# question: what is average weight for each day?

# how to do it in base R
cw_mean <- aggregate(ChickWeight$weight, 
                     by = list(ChickWeight$Time), 
                     FUN = mean)

plot(cw_mean$Group.1, cw_mean$x,
     ylab = "Weight", xlab = "Days",
     type = "l")


# how to do it in lattice

library(lattice)

xyplot( weight ~ Time , 
        data = ChickWeight,
        type = "a")

# note the use of formula instead of "x =" and "y="

# conditioning part of formula allows for grid
# Conditioning must be factors

xyplot( weight ~ Time | Diet , 
        data = ChickWeight, 
        type = "a")

# data subsetting works
xyplot( weight ~ Time | Diet , 
        data = ChickWeight[ ChickWeight$Time > 12, ], 
        type = "a")

# use trellis to control appearance
show.settings() # graphic of all settings for current output device
trellis.par.get() # list of all parameters
trellis.par.get("fontsize") # normal = 12
trellis.par.set("fontsize", value = list("text" = 20) ) # now it's 14

xyplot( weight ~ Time | Diet , 
        data = ChickWeight[ ChickWeight$Time > 12, ], 
        type = "a")


                