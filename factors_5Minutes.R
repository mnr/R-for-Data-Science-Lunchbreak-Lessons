# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# Description: Example file for factors: five minutes of R

# Factors are unique lists
# Stored as integer values
I.am.a.vector <- c("blue","black","green","white","black","blue","blue") # color of cars passing my window
I.am.a.factor <- factor(I.am.a.vector)

I.am.a.vector # notice the repeat of blue and black
levels(I.am.a.factor) # no repeat!
levels(I.am.a.factor) <- c("negro","azul","verde","blanco")
I.am.a.factor # now in spanish

table(I.am.a.factor) # count frequency of values
nlevels(I.am.a.factor) # # of unique values
barplot(table(I.am.a.factor)) # extra credit
levels(ordered(I.am.a.factor))

sum(table(factor(I.am.a.vector,exclude = "blue"))) # count all cars except blue cars

# ordered factors
# I'm serving coffee. Here's what I observed...
size.of.drink.ordered.in.oz <- c(31,8,12,12,16,31,8,20,31,12)

drink.sizes <- c(8,12,16,20,31)
drink.names <- c("Short", "Tall", "Grande", "Venti", "Trenta")

drinks.ordered <- factor(size.of.drink.ordered.in.oz, levels=drink.sizes, labels=drink.names, ordered=TRUE)
# or, this is the same thing
drinks.ordered <- ordered(size.of.drink.ordered.in.oz, levels=drink.sizes, labels=drink.names)

table(drinks.ordered)
barplot(table(drinks.ordered))

