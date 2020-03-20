# lattice SPLOM

# SPLOM == Scatter PLot Matrices

str(ChickWeight) # so we can see what the formula is doing

splom(~ChickWeight)

splom(~ChickWeight[1:2]) # plots weight & time

splom(~ChickWeight[1:2], 
      groups = Diet, 
      data = ChickWeight) 

# changing graph to smoothscatter plot
splom(~ChickWeight[1:2], 
      groups = Diet, 
      data = ChickWeight,
      panel = panel.smoothScatter)

# other panel options
splom(~ChickWeight[1:2], 
      data = ChickWeight,
      panel = panel.loess)

splom(~ChickWeight[1:2], 
      data = ChickWeight,
      panel = panel.spline)

# combine panels

someColors <- colorRampPalette(c("yellow","blue"))

myPanelFunc <- function(x,y,..){
  panel.smoothScatter(x,y, lwd = 1, colramp = someColors)
  panel.loess(x,y, lwd = 2, col = "red")
}

splom(~ChickWeight[1:2], 
      groups = Diet, 
      data = ChickWeight,
      panel = myPanelFunc
      )
      