# lattice SPLOM
# splom(˜data.frame)

# SPLOM == Scatter PLot Matrices

library(lattice)

splom(ChickWeight)

splom(ChickWeight[1:2]) # plots weight & time

splom(~ChickWeight[1:2], 
      groups = Diet, 
      data = ChickWeight)

# smooths out the scatter plot
splom(~ChickWeight[1:2], 
      groups = Diet, 
      data = ChickWeight,
      panel = panel.smoothScatter )


# colorful - but is it useful?
parallelplot(~ChickWeight[1:2], 
      groups = Diet, 
      data = ChickWeight) 
