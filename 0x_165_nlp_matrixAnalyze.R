# NLP: create document vs terms. Analyze result.

# Load the tm package ---------------------------------
install.packages("tm")
library(tm)

# start with the corpus developed in previous session
# RT_corpus contains the work of Rabindranath Tagore as found at project gutenberg
load(file = "Rabindranath_corpus.rdata")


# Term Document Matrix ----------------------------------------------------
# Term Document is terms on rows.
# Document Term is documents on rows
RT_TDmatrix <- TermDocumentMatrix(RT_corpus)
# this tokenizes and places terms across top. Inspect dimnames of RT_TDmatrix

RT_DTmatrix <- DocumentTermMatrix(RT_corpus, control = list(stopwords = TRUE, 
                                                            removePunctuation = TRUE,
                                                            removeNumbers = TRUE,
                                                            stemming = TRUE))
inspect(RT_DTmatrix)

# Analysis ----------------------------------------------------------------
findFreqTerms(RT_DTmatrix, 1000)
findMostFreqTerms(RT_DTmatrix, n = 10) # find most frequent terms in each document

# only find certain terms from a dictionary
inspect(DocumentTermMatrix(RT_corpus, control = list(stopwords = TRUE, 
                                             removePunctuation = TRUE,
                                             removeNumbers = TRUE,
                                             stemming = TRUE,
                                             dictionary = c("eye", "sad"))))

