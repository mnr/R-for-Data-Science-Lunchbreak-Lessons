# NLP: remove punctuation, tokenization, remove stop words


# Download the works of Rabindranath Tagore -------------------------------
install.packages("tidyr")
install.packages("gutenbergr")

library(tidyr)
library(gutenbergr)

RT_works <- gutenberg_works(author == "Tagore, Rabindranath")

downloadHere <- "WorksOfRabindranath"
dir.create(downloadHere)

for (dwnldIndex in 1:nrow(RT_works)) {
  print(RT_works[dwnldIndex, ])
  oneDF <- gutenberg_download(RT_works[dwnldIndex,"gutenberg_id"])
  
  saveHere <- file.path(downloadHere, make.names(RT_works[dwnldIndex,"title"]))
  write.table(oneDF, saveHere)
}

# remove punctuation ------------------------
## gsub("[[punct:]]", "", RT_corpus) # but this will take FOREVER

# instead, use the tm package ------------------------
install.packages("tm")
library(tm)

RT_corpus <- SimpleCorpus(DirSource(downloadHere))
RT_corpus <- tm_map(RT_corpus, removePunctuation) # remove punctuation
RT_corpus <- tm_map(RT_corpus, removeWords, stopwords("english") )# remove stopwords
RT_corpus_token <- Boost_tokenizer(RT_corpus)
