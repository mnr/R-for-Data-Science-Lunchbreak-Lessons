# nlp with sentiment analysis

# Several formats can be analyzed.
# We'll use RT_corpus, the Vcorpus created in exercise file 01_164

# install.packages("SentimentAnalysis")
library(SentimentAnalysis)

# calculate sentiments. stopwords, stemming, etc automatically performed
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
# ruleRatio = words in myWords appearing in corpus / total words
# There are other rules for use, with different requirements of dictionary type.
?ruleWordCount # for example

myWordsSentiment <- analyzeSentiment(RT_corpus, 
                                     rules = list("mywords"=list(ruleRatio,myWords)))
# note that object 14 == .007
RT_corpus[[14]]$meta # The Gardener

# vignette at https://cran.r-project.org/web/packages/SentimentAnalysis/vignettes/SentimentAnalysis.html
