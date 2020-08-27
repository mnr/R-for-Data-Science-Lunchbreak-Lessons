# nlp with sentiment analysis

# sentiment analysis is often used to assess customer satisfaction.
# sentiment analysis looks for correlation between known and unknown text.
# The known text - called a dictionary - identifies "positive" and "negative" terms and phrases
# The unknown text comes from various sources: twitter, surveys, focus group transcripts

# Let's look at the SentimentAnalysis package for R
# install.packages("SentimentAnalysis")
library(SentimentAnalysis)

# Three concepts: Corpus, Dictionary, Rule

# Understand corpus -------------------------------------------------------

# Several formats can be analyzed.
# We'll use RT_corpus, the Vcorpus created in exercise file 01_164. 
# RT_corpus contains poetry from Rabindranath Tagore


# understand dictionaries -------------------------------------------------

# calculate sentiments. stopwords, stemming, etc performed by default
RT_sentiment <- analyzeSentiment(RT_corpus)
# take a look at result
# GI = Harvard IV, General Inquirer Software. 
?DictionaryGI # help page
myGI <- loadDictionaryGI() # inspect the dictionary
# HE = Henry's Financial. ?DictionaryHE
# LM = Loughran - McDonald. Finance. ?DictionaryLM
# QDAP = Qualitative Data Analysis Program. www.umass.edu/qdap

summary(myGI)
compareDictionaries(myGI, loadDictionaryHE())
extractWords(myGI)[1:100]

# use your own word list
myWords <- SentimentDictionary(c("bird", "free", "flight","wing"))
summary(myWords)

# three different dictionary types
?SentimentDictionary
# SentimentDictionaryWordlist - a vector containing the individual entries as strings
# SentimentDictionaryBinary - stores two separate vectors of negative and positive words
# SentimentDictionaryWeighted - words linked to a score specifying polarity


# Understand rules --------------------------------------------------------

# rules are used to compare dictionary to corpus.
?ruleWordCount # = words in myWords appearing in corpus / total words
# uses SentimentDictionaryWordlist

# There are other rules for use, with different dictionary type requirements.
# ruleLinearModel, ruleNegativity, rulePositivity, ruleRatio, 
# ruleSentiment, ruleSentimentPolarity, ruleWordCount

# how to use...
myWordsSentiment <- analyzeSentiment(RT_corpus, 
                                     rules = list("mywords"=list(ruleRatio,myWords)))
# note that object 14 == .007
RT_corpus[[14]]$meta # The Gardener

# vignette at https://cran.r-project.org/web/packages/SentimentAnalysis/vignettes/SentimentAnalysis.html
