# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for apply, lapply, sapply: five minutes of R

data("WorldPhones")
View(WorldPhones)

typeof(WorldPhones)
dim(WorldPhones)

# Examples of using "for" loops to calculate a row or column value
# calculate mean for each country (countries in columns)
for (aColumn in 1:ncol(WorldPhones)) {
  print(colnames(WorldPhones)[aColumn])
  print (mean(WorldPhones[,aColumn]))
}

# calculate mean for each year (years in rows)
for (aRow in 1:nrow(WorldPhones)) {
  print(rownames(WorldPhones)[aRow])
  print(mean((WorldPhones)[aRow,]))
}

# instead of "for", use "apply"
# apply: Returns a vector or array or list of values obtained by applying a
# function to margins of an array or matrix.
# 1 = Row, 2 = Columns
apply(WorldPhones,1,mean)
apply(WorldPhones,2,mean)

# lapply: returns a list resulting from applying 
# a function to each element of original list
# asks: for each value in WorldPhones, Is this value greater than 10,000?
lapply(WorldPhones,function(x) {x>10000}) 

# sapply: returns a vector, matrix or array by applying simplify2array(). 
# in other words, this is a cleaner response
sapply(WorldPhones,function(x) {x>10000}) 

# Extra Credit: look up the following:
rowMeans(WorldPhones)
colMeans(WorldPhones)
rowSums(WorldPhones)
colSums(WorldPhones)
