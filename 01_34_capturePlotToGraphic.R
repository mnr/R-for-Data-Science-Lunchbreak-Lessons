# Copyright Mark Niemann-Ross, 2018
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: capturing plots to an image file

# JPG, PNG, WMF, PDF

pdf('~/Documents/plots/rplot.pdf')
hist(ChickWeight$weight)
dev.off()

# note that the title of the pdf appears in document properties
# but not as part of the plot
pdf('~/Documents/plots/rplot.pdf', 
    title = "Chick Weights",
    paper = "letter")
hist(ChickWeight$weight, main = "Chick Weights")
dev.off()

