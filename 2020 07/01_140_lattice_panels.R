# changing panels in lattice graphics

# in lattice, panel.something is the function used to draw the plot. 
# these functions have parameters - and can be substituted out

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

# change bwplot to a violin plot
bwplot( Diet ~ Time, data = ChickWeight, 
        panel = function(..., box.ratio) {
          panel.violin(..., col = "transparent",
                       varwidth = TRUE, box.ratio = box.ratio)
          panel.bwplot(..., fill = NULL, box.ratio = .1)
          }
          )

# combine panels

someColors <- colorRampPalette(c("yellow","blue"))

# create a function to be used with panels
# look up ?panel for more options
myPanelFunc <- function(x,y,..){
  panel.smoothScatter(x,y, lwd = 1, colramp = someColors)
  panel.loess(x,y, lwd = 2, col = "red")
}

#...then set panel = to the panel plotting function
splom(~ChickWeight[1:2], 
      groups = Diet, 
      data = ChickWeight,
      panel = myPanelFunc
)

# list of plot types and possible panels

# barchart: panel.barchart
# bwplot: panel.bwplot, panel.violin
# cloud : panel.cloud, panel.3dscatter, panel.3dwire, panel.wireframe
# contourplot: panel.contourplot, panel.levelplot, panel.levelplot.raster
# densityplot: panel.densityplot
# dotplot: panel.dotplot
# generics: panel.abline, panel.arrows, panel.average, panel.axis, panel.curve, 
#           panel.fill, panel.functions, panel.grid, panel.linejoin, panel.lines
#           panel.lmline, panel.loess, panel.mathdensity, panel.points, panel.polygon,
#           panel.refline, panel.rug, panel.smoothscatter, panel.violin
# histogram: panel.histogram
# levelplot: panel.contourplot, panel.levelplot, panel.levelplot.raster
# parallel: panel.parallel
# qqmath: panel.qqmath, panel.qqmathline
# stripplot: panel.stripplot
# xyplot: panel.xyplot, panel.qq, panel.splom