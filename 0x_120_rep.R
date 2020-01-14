# Use rep() to create long repetitive vectors	rep is easy, but oh-so-useful for
# repetitive strings. Using rep to create long repetitive strings is an
# essential for big data.

# simply...
rep("Hello", 5)

# ... or...
rep("hello", length.out = 10)

# repeats vector elements
rep(c("hello","bob"), 3)

# repeats each element in the vector
rep(c("hello","bob"), each = 3)

# what happens if you repeat a dataframe
thisdf <- data.frame(Bob = c(4,5,6),
                     Shirley = c(7,8,9))

anotherdf <- rep(thisdf,3) # rep returns a list

# here's a complex example
# I need year-quarter identifiers for an unpredictable number of years
paste0(2003:2021,"-") # range of years
rep(paste0(2003:2021,"-"), 4) # 4x years - one for each quarter
paste0(rep(paste0(2003:2021,"-"),4),c("Q1","Q2","Q3","Q4"))
sort(paste0(rep(paste0(2003:2021,"-"),4),c("Q1","Q2","Q3","Q4"))) # sort by year
