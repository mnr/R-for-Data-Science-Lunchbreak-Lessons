# NLP packages - tidytext


# Part of the tidyverse
# one token per row, instead of Document-Term or Term-Document


# install.packages("tidytext")
# install.packages("gutenbergr")

library(tidytext)
library(dplyr)
library(gutenbergr)

# We need a document. How about Rabindranath Tagore - Stray Birds
RT_strayBirds <- gutenberg_download(6524, 
                                strip = TRUE,
                                meta_fields = c("title", "language", "author"))

# Here's a tidytext process
# 1) download
# 2) unnest_tokens produces one token/word per line
# 3) anti_join (from dplyr) removes stop words (stop_words provided by tidytext)
# 4) count = count the token frequency and sort
RT_strayBird <- gutenberg_download(6524, 
                   strip = TRUE,
                   meta_fields = c("title", "language", "author")) %>%
  unnest_tokens(words, text) %>%
  anti_join(stop_words, by = c("words" = "word")) %>%
  count(words, sort = TRUE)

# LOTS MORE...
# Here's THE BOOK by Julia Silge and David Robinson
# https://www.tidytextmining.com/
