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
RT_TDmatrix <- TermDocumentMatrix(RT_corpus, control = list(stopwords = TRUE, 
                                                          removePunctuation = TRUE,
                                                          removeNumbers = TRUE,
                                                          stemming = TRUE))

# this tokenizes and places terms across top. Inspect dimnames of RT_TDmatrix

RT_DTmatrix <- DocumentTermMatrix(RT_corpus, control = list(stopwords = TRUE, 
                                                            removePunctuation = TRUE,
                                                            removeNumbers = TRUE,
                                                            stemming = TRUE))
inspect(RT_DTmatrix)
# this is a matrix - albeit object type = DocumentTermMatrx. 
# with "inspect()" You can subset just like any other matrix
inspect(RT_DTmatrix[ 3 , "heart"]) # row 3, column "heart"
inspect(RT_DTmatrix[  , "heart"]) # all rows, column "heart"
inspect(RT_DTmatrix[  , c("heart", "eye", "sad")]) # all rows, multiple columns


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

