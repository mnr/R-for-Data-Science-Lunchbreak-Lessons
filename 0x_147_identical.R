# identical for comparison

# sometimes equality isn't enough. You might want EXACT equality
# are the objects or datatypes the same?

"3" == 3 # compares a character to an int. Produces TRUE
identical("3", 3) # FALSE - correctly identifies character vs int.

# always produces a single logical response
aVector <- c(1:5)
bVector <- c(1:5)

if ( aVector == bVector) { print("YooHoo")} # error: condition > 1

# why?
aVector == bVector # produces one result for each element

# instead, use identical
if ( identical(aVector,bVector)) {print("YooHoo")} # identical produces one results

# special matrix behavior
mtxA <- matrix(1:9, nrow = 3)
mtxB <- matrix(1:9, nrow = 3)

mtxA == mtxB # element by element comparison
identical(mtxA,mtxB) # Matrix by matrix comparison
