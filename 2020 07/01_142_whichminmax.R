# which.min and which.max - find the location of min or max

# finds location of first minimum (or maximum)

myVector <- c(1:3,6,5:1)
which.max(myVector) # returns 4 - the position of max
#...so...
myVector[4] # ...is the max of myVector

# So great - but what good is it?
which.min(ChickWeight$weight) # minimum weight is on row 196

# ...I can use that information to determine time, Chick #, and Diet
ChickWeight[which.min(ChickWeight$weight), ]

# what happens if there are multiple min/max values?
myVector <- c(1:3,6,5:1,6)
which.max(myVector) # only returns first
# to get list of max values...
which(myVector == max(myVector))
# ...to get rows...
ChickWeight[which(myVector == max(myVector)),]
