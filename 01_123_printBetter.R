# Use print() for more than you do now	Everyone uses print – but nobody uses all
# of it. Print has extra features that can simplify and beautify data reporting.

# boring
print("hello")

# remove quotes
print("hello", quote = FALSE)

# working with factors
myletters <- as.factor(letters)
print(myletters, max.levels = 0) # doesn't print levels after vector
print(myletters, max.levels = 10) # controls # of levels printed

# working with NA
someNA <- c(1:5, NA, 15)
print(someNA)
print(someNA, na.print = "No Apples")

# justifying
somewords <- c("twas", "brilling", "and", "the")
print(somewords)
print(somewords, right = TRUE)

# many classes have customized print 
print(person(given = "Mark", family = "Niemann-Ross", role = "aut", email = "Mark@niemannross.com"))
# notice how print rearranges the values and reformats email and role