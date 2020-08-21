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


# use the tm package ------------------------
install.packages("tm")
library(tm)

# RT_corpus <- SimpleCorpus(DirSource(downloadHere)) # doesn't allow changes to meta

RT_corpus <- VCorpus(DirSource(downloadHere))
# take a look at the corpus. It's a list. Each entry has content and meta data
content(RT_corpus[[1]]) # content of first document in corpus
meta(RT_corpus[[1]]) # metadata of first document in corpus
meta(RT_corpus[[1]], tag = "datetimestamp")
meta(RT_corpus[[1]], tag = "author") <- "Rabindranath Tagore"

# fix author in all documents in corpus
fixAuthor <- function(eachDoc) {
  PlainTextDocument(content(eachDoc),
                    author = "Rabindranath Tagore",
                    datetimestamp = as.POSIXlt(meta(eachDoc, tag = "datetimestamp")),
                    id = meta(eachDoc, tag = "id"),
                    language = "english")
}
RT_corpus <- tm_map(RT_corpus, fixAuthor)
# note: Anything you don't explicitly set is cleared

# remove punctuation and other trash ----------------------

# remove punctuation ------------------------
## gsub("[[punct:]]", "", RT_corpus) 
# but this will take FOREVER

inspect(removePunctuation(RT_corpus[[1]])) # inspect the action
RT_corpus <- tm_map(RT_corpus, removePunctuation) 
RT_corpus <- tm_map(RT_corpus, stripWhitespace) 
RT_corpus <- tm_map(RT_corpus, removeNumbers) 

inspect(RT_corpus[[1]])

# save for future sessions ------------------------------------------------
save(RT_corpus, file = "Rabindranath_corpus.rdata")

# be sure to check out ""Text Analytics and Predictions with R"
# https://www.linkedin.com/learning/text-analytics-and-predictions-with-r-essential-training