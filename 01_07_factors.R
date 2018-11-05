# example files for https://linkedin-learning.pxf.io/rweekly_factor
# Description: Example file for factors

# Data Structures are * Vectors * Lists * Matrices * Arrays * Data frame * FACTORS

# Factors are lists of unique values, Stored as integers
I.am.a.vector <- c("blue","black","green","white","black","blue","blue") # color of cars passing my window
I.am.a.factor <- factor(I.am.a.vector)

I.am.a.vector # notice the repeat of blue and black
levels(I.am.a.factor) # no repeat! Efficient storage.
levels(I.am.a.factor) <- c("negro","azul","verde","blanco")
I.am.a.factor # now in spanish

table(I.am.a.factor) # count frequency of values. table is a collection of factors
nlevels(I.am.a.factor) # # of unique values
barplot(table(I.am.a.factor)) # extra credit
levels(ordered(I.am.a.factor))

sum(table(factor(I.am.a.vector,exclude = "blue"))) # count all cars except blue cars

