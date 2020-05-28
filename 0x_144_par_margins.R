# using par to set margins and layout
par(omi = c(.8, .8, .8, .8))
plot(1:10, main = "main title", xlab = "This is the x label", ylab = "This is the y label", sub = "Subtitle")+
  box(which = "outer",  col = "red")+
  mtext("The red line is the edge of the device region", side = 3, line = 3, outer = TRUE)+
  mtext("This area is the outer margin", side = 3, line = 1, outer = TRUE)+
  box(which = "inner",  col = "green")+
  mtext("The green line is the figure region", side = 3, line = 3)+
  mtext("This area is the figure/inner region", side = 3, line = 1)+
  #box(which = "figure", col = "blue")+
  mtext("The yellow box is the edge of the plot")+
  box(which = "plot", col = "yellow")


# regarding the device region / outer margins ---------------------------------------------
# din - Width and height of device in inches. 
# dev.size is similiar, but dynamic when window is resized.
par("din") # run ... resize the plot window ... run 

# Regarding the outer margin ----------------------------------------------

par("oma")
par("omd")


# regarding the figure region -----------------------------------------------
par("mar")
par("mai")

# regarding the plot region -------------------------
