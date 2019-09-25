# Data Structures are * Vectors * Lists * Matrices * ARRAY * Data Frame * factors

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_array" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "Data Structures" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("array", "dimnames") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# array is a vector or list with 2+ dimensions
# (Matrix is a 2-dimension Array. Array is like stacked matrices)
I.am.a.vector <- c("twas","brillig","and","the","slithey","toves","did","gyre","and","gimble","in","wabe")

# array(data_vector,dim_vector)
# dimension is expressed as row, column, z-index
I.am.an.array <- array(I.am.a.vector,c(2,3,2))
I.am.an.array

# indexing into the array
I.am.an.array[2,3,3] # this fails because there is not a third level
I.am.an.array[2,3,2]
I.am.an.array[2,3,2] <- "a new value"
I.am.an.array[2,,2] # omission returns the entire range. Here - all columns of row 2, table 2


# dimnames
my.row.names <- c("up","down")
my.column.names <- c("left","middle","right")
my.table.names <- c("behind","in front")
dimnames(I.am.an.array) <- list(my.row.names,my.column.names,my.table.names)
I.am.an.array
I.am.an.array["down",3,2]
