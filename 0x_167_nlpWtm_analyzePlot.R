# NLP: create document vs terms. Analyze result.

# Load the tm package ---------------------------------
install.packages("tm")
library(tm)

# RT_corpus contains the work of Rabindranath Tagore as found at project gutenberg
load(file = "Rabindranath_corpus.rdata")


# Term Document Matrix ----------------------------------------------------
RT_TDmatrix <- TermDocumentMatrix(RT_corpus, control = list(stopwords = TRUE, 
                                                          removePunctuation = TRUE,
                                                          removeNumbers = TRUE,
                                                          stemming = TRUE))

RT_DTmatrix <- DocumentTermMatrix(RT_corpus, control = list(stopwords = TRUE, 
                                                            removePunctuation = TRUE,
                                                            removeNumbers = TRUE,
                                                            stemming = TRUE))

# Analysis ----------------------------------------------------------------
findFreqTerms(RT_DTmatrix, 1000) # find terms that appear > 1000 times
findMostFreqTerms(RT_DTmatrix, n = 10) # find most frequent terms in each document

# find associated words. Simple - this is not "sentiment"
# note use of term-document, NOT document-term
findAssocs(RT_TDmatrix, c("happi","sad"), c(.8, .7))

# plot relationships
# requires Rgraphviz from bioconductor
install.packages("BiocManager")
BiocManager::install("Rgraphviz")

# then plot
plot(RT_TDmatrix, 
     terms = sample(Terms(RT_TDmatrix), 20),
     corThreshold = .8,
     weighting = TRUE)

# get the most frequent terms of The Fugitive
RT_frequent <- findMostFreqTerms(RT_DTmatrix, n = 15)
names(RT_frequent$The.Fugitive)

# Is there correlation between those terms?
plot(RT_TDmatrix, 
     terms = names(RT_frequent$The.Fugitive),
     corThreshold = .75,
     weighting = TRUE)


# be sure to check out the Natural Language Processing task
# https://cran.r-project.org/web/views/NaturalLanguageProcessing.html

