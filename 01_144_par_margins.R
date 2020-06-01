# using par to set margins and layout

# need to save current status of par
par(omi = c(.5, .5, .5, .5))

oldParValues <- par(no.readonly = TRUE)

# here's a diagram of plot regions

makeAPlot <- function(showThis = "labels") {
  plot(1:10, xlab = "", ylab = "", sub = "", axes = FALSE)+
    box(which = "outer",  col = "red")+
    box(which = "inner",  col = "green")+
    #box(which = "figure", col = "blue")+
    box(which = "plot", col = "yellow")
  if (showThis == "labels") {
    mainText = ""
    mtext("The red line is the edge of the device region", side = 3, line = 3, outer = TRUE)
    mtext("This area is the outer margin", side = 3, line = 1, outer = TRUE)
    mtext("The green line is the figure region", side = 3, line = 3)
    mtext("This area is the figure/inner region", side = 3, line = 1)
    mtext("The yellow box is the edge of the plot", side = 1, line = 0)
  } else if (showThis == "functions") {
    mainText = ""
    
  # din - device size
    mtext(paste('par("din")[1] =', prettyNum(par("din")[1], digits = 3)), 
          line = 1, outer = TRUE, adj = 1 )
    mtext(paste('par("din")[2] =', prettyNum(par("din")[2], digits = 3)), 
          line = 1, outer = TRUE, adj = 1, side = 1 )
    
    # pin - plot size
    mtext(paste('par("pin")[1] =', prettyNum(par("pin")[1], digits = 3)), 
          line = 0, adj = 0, side = 1 )
    mtext(paste('par("pin")[2] =', prettyNum(par("pin")[2], digits = 3)), 
          line = 0, adj = 0, side = 4 )
    
    for (theIndex in 1:4) {
      mtext(paste0('par("omi")[',theIndex,'] =', prettyNum(par("omi")[theIndex], digits = 3) ),
            line = 1, adj = 0, outer = TRUE, side = theIndex)
      mtext(paste0('par("mai")[',theIndex,'] =', prettyNum(par("mai")[theIndex], digits = 3) ),
            line = 1, adj = 0, side = theIndex)

    }
    
  } 
  title(main = mainText)

}

makeAPlot(showThis = "functions")
makeAPlot(showThis = "labels")

# margins are specified in lines of text or inches.
par("oma") # lines of text: bottom, left, top, right
par("omi") # inches

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

# par("fig") # coordinates of figure region compared to par("din")
par("fin") # size of figure region in inches. dynamic

par(fin = c(4,3))
makeAPlot()
par(oldParValues) # reset par

# regarding the plot region -------------------------

