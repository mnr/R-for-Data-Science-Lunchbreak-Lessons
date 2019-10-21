# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: finding elements in a matrix

# Yash: Hi Mark
# Yash: I'm going to Europe and have a special deal on car rental. 
# Yash: For a low price, I can drive 460 km. 
# Yash: Can I drive between two cities?

# MNR: Let's see...
# MNR: First, I'll need to create a matrix of distances between European cities
euroDistances <- as.matrix(datasets::eurodist)
# MNR: Let's take a look at that matrix
euroDistances
# The row names indicate the starting city
# The column names indicate the ending city

# MNR: Now I can see if any distances between two cities equals 460 km
which(euroDistances == 460) 
# MNR: Sure! There are six routes you could drive

# Yash: Great. What cities could I start in?

# MNR: To answer your question, I need to get the row and column names for each 460 km in the matrix
# MNR: R has functions for this called "row" and "col"
# MNR: row returns a matrix that labels each value with the name (or index) of the row it appears in
row(euroDistances) # MNR: here it is as indexes
row(euroDistances, as.factor = TRUE) # mnr: here it is as names
# MNR: To find the starting city of each 460 km trip, find the row names for each 460 value
row(euroDistances, as.factor = TRUE)[which(euroDistances == 460)]

# Yash: But then what cities are 460 km from those starting cities?

# MNR: to find the ending city, use the same structure, but with col
col(euroDistances, as.factor = TRUE)[which(euroDistances == 460)]

# Yash: Can you give that to me in a neat table?
# MNR: Sure. Let me put it into a data.frame for you
data.frame(START_HERE = row(euroDistances, as.factor = TRUE)[which(euroDistances == 460)],
           END_HERE = col(euroDistances, as.factor = TRUE)[which(euroDistances == 460)])

# Yash: This is great. I didn't know R could be used for travel planning.
# MNR: Honestly, until now, I didn't know either. Let's do this again sometime.
