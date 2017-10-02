# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for ordered factors

# main idea: sort by placement, instead of numeric or alphabetic

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

