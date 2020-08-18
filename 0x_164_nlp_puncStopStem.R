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
  write.table(oneDF$text, saveHere, row.names = FALSE)
}

# remove punctuation ------------------------
## gsub("[[punct:]]", "", RT_corpus) 
# but this will take FOREVER

# instead, use the tm package ------------------------
install.packages("tm")
library(tm)

RT_corpus <- SimpleCorpus(DirSource(downloadHere))

# remove punctuation and other trash ----------------------
inspect(removePunctuation(RT_corpus[[1]])) # inspect the action
RT_corpus <- tm_map(RT_corpus, removePunctuation) 
RT_corpus <- tm_map(RT_corpus, stripWhitespace) 
RT_corpus <- tm_map(RT_corpus, removeNumbers) 

# remove stopwords --------------------
stopwords(kind = "en") # produces a list of stopwords
stopwords("SMART")
stopwords("german")
RT_corpus <- tm_map(RT_corpus, removeWords, stopwords("english") )# remove stopwords

# stemming --------------------------
# reduce words to their stems
# does some strange things to words - i.e. Februari
# look up "Porter Stemming algorithm" for details
RT_corpus <- tm_map(RT_corpus, stemDocument)

inspect(RT_corpus[[1]])

# save for future sessions ------------------------------------------------
save(RT_corpus, file = "Rabindranath_corpus.rdata")
