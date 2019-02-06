# Example file for LinkedIn Learning video at https://linkedin-learning.pxf.io/rweekly_dotchart
# Description: dotchart

# dotchart works with matrix or vector (not dataframe)
# Dotplot for vectors ----
vectorToPlot <- c(1:6)

names(vectorToPlot) <- c(LETTERS[1:6])

dotchart(vectorToPlot, cex = .7)

myGroup <- factor(c("group1","group3","group2","group1","group3","group2"))

dotchart(vectorToPlot, groups = myGroup)

dotchart(vectorToPlot,
         gcolor = "red", groups = myGroup, 
         gdata = c(median(vectorToPlot[myGroup == "group1"]),
                   median(vectorToPlot[myGroup == "group2"]),
                   median(vectorToPlot[myGroup == "group3"])),
         cex = .7,
         main = "Groups of Things", xlab = "Things")

# dotplot for matrix ----

View(WorldPhones)

str(WorldPhones) # worldphones is a matrix - not a dataframe
# Major labels (Groups) are matrix columns. Minor labels are matrix rows

dotchart(WorldPhones) # works, but it's messy

dotchart(WorldPhones, gcolor = "Blue", cex = .5,
         gdata = colMeans(WorldPhones), gpch = 15,
         main = "World Phones by Country") 

