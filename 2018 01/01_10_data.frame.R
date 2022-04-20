# Description: Example file for data frame

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_dataframe" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "Data Structures" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- "data.frame" 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Data Structures are * Vectors * Lists * Matrices * Arrays * DATA FRAME * factors

# data frame is like a spreadsheet
# Columns (aka: variables) are vectors
# Rows (aka: observations) are lists and must contain an equal number of columns

I.am.a.vector <- c(1,2,3,4,5,6)
I.am.also.a.vector <- c("twas","brillig","and","the","slithey","toves")
many.months <- month.abb[1:6] # e.g. jan, feb, mar, apr, may, jun

I.am.a.dataframe <- data.frame(I.am.a.vector,I.am.also.a.vector,many.months)

# vectors need to have identical lengths (lengths aka "observations")
I.am.a.short.vector <- c(1:5)
I.am.a.failure <- data.frame(I.am.a.vector,I.am.a.short.vector) #oops - different # of rows

str(I.am.a.dataframe) # structure of the dataframe
nrow(I.am.a.dataframe) # Number of Rows (observations)
ncol(I.am.a.dataframe) # Number of Columns (variables)
head(I.am.a.dataframe) # first rows of dataframe
tail(I.am.a.dataframe) # last rows of dataframe
names(I.am.a.dataframe) # Header names (aka variable names)

# stringsAsFactors --------------------------------------------------------
# strings are converted to factors - this is a default behavior
I.am.a.dataframe[2,3] # col 3 is a factor (used to be a string)
# I() is "Inhibit conversion
str(I.am.a.dataframe)
I.am.a.dataframe <- data.frame(I.am.a.vector,I(many.months),row.names = I.am.also.a.vector)
str(I.am.a.dataframe)
I.am.a.dataframe["slithey","many.months"]

# row.names ---------------------------------------------------------------
I.am.a.dataframe <- data.frame(I.am.a.vector,many.months,row.names = I.am.also.a.vector)
I.am.a.dataframe["slithey","many.months"]
row.names(I.am.a.dataframe)

# check out tibbles - https://cran.r-project.org/web/packages/tibble/vignettes/tibble.html
