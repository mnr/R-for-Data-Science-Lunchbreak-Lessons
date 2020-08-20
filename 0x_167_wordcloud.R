# wordcloud

install.packages("wordcloud")
library(wordcloud)

# Load the tm package ---------------------------------
install.packages("tm")
library(tm)

# start with the corpus developed in previous session
# RT_corpus contains the work of Rabindranath Tagore as found at project gutenberg
load(file = "Rabindranath_corpus.rdata")
RT_DTmatrix <- DocumentTermMatrix(RT_corpus, control = list(stopwords = TRUE, 
                                                            removePunctuation = TRUE,
                                                            removeNumbers = TRUE,
                                                            stemming = TRUE))
RT_TDmatrix <- TermDocumentMatrix(RT_corpus, control = list(stopwords = TRUE, 
                                                            removePunctuation = TRUE,
                                                            removeNumbers = TRUE,
                                                            stemming = TRUE))

RT_frequent <- findMostFreqTerms(RT_DTmatrix, n = 80)

# plot words against frequency
wordcloud(words = names(RT_frequent$The.Fugitive),
          freq = RT_frequent$The.Fugitive,
          colors = c("red","blue","green"),
          scale = c(3.5,0.25))

# commonality cloud
commonality.cloud(as.matrix(RT_TDmatrix), max.words = 80,
                  colors = c("red","blue","green"),
                  scale = c(3.5,0.25))

