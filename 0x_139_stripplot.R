# lattice stripplot
# stripplot(factor ˜ numeric)

# see also...
?panel.stripplot

library(lattice)

# simple plot. Pay attention to formula factor~numeric
stripplot( Diet ~ weight , data = ChickWeight)

# with panel.stripplot options
# note these can be passed without using panel.stripplot()

# jitter
stripplot( Diet ~ weight , data = ChickWeight,
           jitter.data = TRUE
           )

stripplot( Diet ~ weight , data = ChickWeight,
           jitter.data = TRUE,
           factor = 1
)

stripplot( Diet ~ weight , data = ChickWeight,
           jitter.data = TRUE,
           factor = .5
)

stripplot( Diet ~ weight , data = ChickWeight,
           jitter.data = TRUE,
           amount = .2 # similar to factor
)


# groups
stripplot( Diet ~ weight , data = ChickWeight,
           jitter.data = TRUE,
           factor = 1,
           groups = Diet
)

# vertical plot

# not what we want
stripplot( Diet ~ weight , data = ChickWeight,
           horizontal = FALSE
)

# Need to also change the formula
stripplot( weight ~ Diet , data = ChickWeight,
           horizontal = FALSE
)
