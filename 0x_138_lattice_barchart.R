# lattice barcharts & bw plot
# formula: bwplot(factor ˜ numeric)
# formula: barchart(character ˜ numeric)

library(lattice)

# using standard formula setup

barchart( weight ~ Time + Diet, data = ChickWeight)

barchart( Diet ~ weight, data = ChickWeight) # these plots make more sense with a factor 

bwplot( Diet ~ Time, data = ChickWeight)

# With barchart options
?barchart # refers to xyplot
?panel.barchart # provides barchart specific options
barchart( weight ~ Time + Diet, data = ChickWeight)
barchart( weight ~ Time + Diet, data = ChickWeight, box.ratio = 10)
barchart( weight ~ Time + Diet, data = ChickWeight, horizontal = TRUE) # note the axis stay the same

# with bwplot options
? panel.bwplot
bwplot( Diet ~ Time, data = ChickWeight, box.ratio = 10)
bwplot( Diet ~ Time, data = ChickWeight,
        notch = TRUE, varwidth = TRUE
)

# changing axis label
levels(ChickWeight$Diet) <- c("Apples","Bananas","Steak","Potatoes")
bwplot( Diet ~ Time, data = ChickWeight)




