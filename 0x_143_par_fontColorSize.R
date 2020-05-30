# par - short for Graphical Parameters
# set or get values controlling the look of graphics and plots
# There is a LOT of things going on - so breaking it up into three sessions

# I've included a file that exercises most of the par() options.
# use it as reference

# need to save current status of par
oldParValues <- par(no.readonly = TRUE)

# first - here's a simple plot we'll use for an example

plot(1:10,main = paste('par("ps") =',par("ps")),
     sub = "Here's a subtitle"
     )

# let's start with the easy controls: font, size, color

# font size
data.frame("units" = c("points","inches","inches","pixels","user coordinates"),
                        "one value" = c(par("ps")," "," "," ","   "),
                        "width" = c(" ",par("cin")[1]," ",par("cra")[1],par("cxy")[1]),
                        "height" = c(" ",par("cin")[2],par("csi"),par("cra")[2],par("cxy")[2]),
                        row.names = c("ps","cin","csi","cra","cxy")
)

# this can be changed - but nothing else changes
par(ps = 16) # point size 1/72 inch
plot(1:10,main = paste('par("ps") =',par("ps")),
     sub = "Here's a subtitle"
)
# but other sizes don't change
data.frame("units" = c("points","inches","inches","pixels","user coordinates"),
           "one value" = c(par("ps")," "," "," ","   "),
           "width" = c(" ",par("cin")[1]," ",par("cra")[1],par("cxy")[1]),
           "height" = c(" ",par("cin")[2],par("csi"),par("cra")[2],par("cxy")[2]),
           row.names = c("ps","cin","csi","cra","cxy")
)

# these are read only
par(cin = c(15,20)) # width & height in inches
par(csi = c(15)) # height in inches
par(cra = c(15,20)) # width & height in pixels
par(cxy = c(15,20)) # width & height in user coordinates
# so for now - just ignore them

par(oldParValues) # reset par

# cex is Character Expansion - aka font size
par("cex") # defaults to 1
par(cex = 1.5)
plot(1:10,main = paste('par("ps") =',par("ps")),
     sub = "Here's a subtitle"
)

# four different areas to control
par(cex = 1, cex.axis = .5, cex.lab = 1, cex.main = 2, cex.sub = 1.5)
plot(1:10,
     xlab = paste('x label is par("cex.lab") =',par("cex.lab")),
     ylab = paste('y label is par("cex.lab") =',par("cex.lab")),
     main = paste('par("cex.main") =',par("cex.main")),
     sub = paste('par("cex.sub") =',par("cex.sub"))
)

par(oldParValues) # reset par

# character size, font, and color include axis, lab, main, and sub

# Here's font examples
par(font.axis = 1, font.lab = 2, font.main = 3, font.sub = 4)
plot(1:10,
     xlab = "italic",
     ylab = "italic",
     main = "bold",
     sub = "bold italic"
)
# 1 = plain (the default), 2 = bold, 3 = italic. 4 = bold italic, 5 = symbol

par(oldParValues) # reset par

# Here's color examples
par(col.axis = "red", col.lab = "blue", col.main = "green", col.sub = "yellow")
plot(1:10,
     xlab = "x label",
     ylab = "y label",
     main = "main",
     sub = "subtitle"
)
# see the previous R weekly sessions that talk about choosing colors
# but as a quick view
colors()

# by the way, there are other color commands
par(bg = "coral", fg = "cyan" , col = "white")
plot(1:10,
     xlab = "x label",
     ylab = "y label",
     main = "main",
     sub = "subtitle"
)
