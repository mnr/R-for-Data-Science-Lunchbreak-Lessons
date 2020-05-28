# using par to set margins and layout

# need to save current status of par
oldParValues <- par(no.readonly = TRUE)

# here's a diagram of plot regions
par(omi = c(.8, .8, .8, .8))
makeAPlot <- function() {
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
}

makeAPlot()

# margins are specified in lines of text or inches.
par("oma") # lines of text: bottom, left, top, right
par("omi") # inches

# lets start from the outside of the plot and move in
# regarding the device region / outer margins ---------------------------------------------
# din - Width and height of device in inches. 
# dev.size is similiar, but dynamic when window is resized.
par("din") # run ... resize the plot window ... run 

# Regarding the outer margin ----------------------------------------------

par("oma") # outer margin / lines (bottom, left, top, right)
par("omi") # outer margin / inches (bottom, left, top, right)

par(omi = c(1,.5,1,.5))
makeAPlot()
par(oldParValues) # reset par


# omd is in relation to device size
par("omd") # outer margin / fraction of din (x1, x2, y1, y2)

#...so
omd_x1 <- par("omd")[1]
din_width <- par("din")[1]
omi_left <- par("omi")[2]
omd_x1 * din_width == omi_left


# regarding the figure region -----------------------------------------------
par("mar") # figure margin / lines (bottom, left, top, right)
par("mai") # figure margin / inches (bottom, left, top, right)

par(mai = c(.2,.2,.2,.2))
makeAPlot()
par(oldParValues) # reset par

# regarding the plot region -------------------------
# size of plot region - x1, x2, y1, y2
par("usr")
par(usr = c(1,15,1,12))
makeAPlot()
