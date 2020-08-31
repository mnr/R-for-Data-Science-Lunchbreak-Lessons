# gutenbergr - access files from project gutenberg

# Let's download the works of Rabindranath Tagore

install.packages("tidyr")
install.packages("gutenbergr")

library(tidyr)
library(gutenbergr)

# find works by Tagore
gutenberg_metadata # ALL works (from library)

# find gutenberg IDs for Rabindranath Tagore
RT_rows <- grep("Tagore", gutenberg_metadata$author) # returns row numbers
RT_gbID <- gutenberg_metadata$gutenberg_id[RT_rows] # because row numbers != id numbers
  
# ...or, use gutenberg_works (more precise)
RT_works <- gutenberg_works(author == "Tagore, Rabindranath")
RT_gbID <- RT_works$gutenberg_id

# download all files
RT_corpus <- gutenberg_download(RT_gbID)

# strip headers and footer from the book (in prep for NLP)
RT_corpus <- gutenberg_download(RT_gbID, 
                                strip = TRUE,
                                meta_fields = c("title", "language"))

