
# Example code for LinkedIn Learning course at https://linkedin-learning.pxf.io/rwkly_colors
# Description: Example file for colors

# main idea - I need some colors that won't hurt my eyes

colors() # returns a vector of color names. Useless

colors()[1:3]

# colorRamp is more useful
# returns a function that returns ONE color based on input
mycolors <- colorRamp(c(colors()[1:10]))

mycolors(.3) # argument between 0 and 1

hist(ChickWeight$weight, col = mycolors(.5))
# curious - why three colors? Because these are the RGB values.
# equivalent to...
hist(ChickWeight$weight, col = c(221.5, 207.5, 190))

# one way to get multiple values from colorramp
mycolors(c(.1,.3,.9))
hist(ChickWeight$weight, col = mycolors(c(.1,.3,.9)))


# or... define with colorRampPalette...
mycolorspal <- colorRampPalette(c(colors()[1:10]))

mycolorspal(10)

hist(ChickWeight$weight, col = mycolorspal(10))

