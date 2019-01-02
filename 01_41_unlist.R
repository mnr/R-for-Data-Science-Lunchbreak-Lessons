# Link to LinkedIn Learning: https://linkedin-learning.pxf.io/rweekly_unlist
# Description: unlist

# lists can contain lists
a.list <- list(letters[1:3]) # contains "a", "b", "c"
another.list <- list(1:5) # contains 1,2,3,4,5
still.another.list <- list(TRUE,FALSE,TRUE)
I.am.a.list <- list(a.list,another.list,still.another.list)

I.am.a.list
unlist(I.am.a.list)
unlist(I.am.a.list, recursive = FALSE)


# named list elements (aka key/value)
I.am.a.list <- list(bob=c(6.2,150),bill=c(5.4,110))

I.am.a.list
unlist(I.am.a.list)
unlist(I.am.a.list, use.names = FALSE)
