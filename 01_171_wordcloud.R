# wordcloud

install.packages("wordcloud")
library(wordcloud)

# Load the tm package ---------------------------------
# install.packages("tm")
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

RT_frequent <- findMostFreqTerms(RT_DTmatrix, n = 800)

# plot words against frequency
png("wordcloud_packages.png", width=12,height=8, units='in', res=300)
par(mar = rep(0, 4))
wordcloud(words = names(RT_frequent$The.Fugitive),
          freq = RT_frequent$The.Fugitive,
          scale = c(6,0.25),
          colors = brewer.pal(9, "Paired" ),
          min.freq = 2)
dev.off()
# commonality cloud
commonality.cloud(as.matrix(RT_TDmatrix), max.words = 80,
                  colors = c("red","blue","green"),
                  scale = c(3.5,0.25))

