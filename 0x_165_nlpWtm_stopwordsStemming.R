# NLP: remove stop words and handle stemming

# Load the tm package ---------------------------------
install.packages("tm")
library(tm)

# start with the corpus developed in previous session
# RT_corpus contains the work of Rabindranath Tagore as found at project gutenberg
load(file = "Rabindranath_corpus.rdata")

# remove stopwords --------------------
stopwords(kind = "en") # produces a list of stopwords
stopwords("SMART")
stopwords("german")
RT_corpus <- tm_map(RT_corpus, removeWords, stopwords("english") ) # remove stopwords
# how to add stopwords
RT_corpus <- tm_map(RT_corpus, removeWords, c(stopwords("english"), "mark") ) # add stopwords

# stemming --------------------------
# reduce words to their stems
# does some strange things to words - i.e. Februari
# look up "Porter Stemming algorithm" for details
RT_corpus <- tm_map(RT_corpus, stemDocument)

inspect(RT_corpus[[1]])

# save for future sessions ------------------------------------------------
save(RT_corpus, file = "Rabindranath_corpus.rdata")
