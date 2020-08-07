# NLP: remove punctuation, tokenization, remove stop words

install.packages("tidyr")
install.packages("gutenbergr")

library(tidyr)
library(gutenbergr)

RT_works <- gutenberg_works(author == "Tagore, Rabindranath")
RT_corpus <- gutenberg_download(RT_works$gutenberg_id, 
                                strip = TRUE,
                                meta_fields = c("title", "language"))

# remove punctuation
gsub("[[punct:]]", "", RT_corpus) # but this will take FOREVER

