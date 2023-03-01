# Sentiment Analysis for Natural Language Processing
poetCorpus <- readRDS("poetCorpus.RDS")

# mscstexta4r ----------
# Microsoft Cognitive Services Text Analytics
# https://azure.microsoft.com/en-us/products/cognitive-services/text-analytics/
# requires an online account with Microsoft
install.packages("mscstexta4r")
library(mscstexta4r)

# texter ----------
# works with tidyverse & tidytext to provide easy sentiment analysis
# focused on nrc dictionary
install.packages("texter")
library(texter)

counter(poetCorpus$content[1], c("beautiful", "poet"))
top_Sentiments(poetCorpus$content[1], plot = TRUE)
sentimentAnalyzer(poetCorpus$content[1], details = TRUE)
top_bigrams(poetCorpus$content[1], bigram_size = 10)

# meanr ----------
# focused on HuLiu dictionary
# one function: "score"
install.packages("meanr")
library(meanr)

score(poetCorpus$content[1])

# RSentiment -----------
# documentation is sparse
# requires negative and positive examples
install.packages("RSentiment")
library(RSentiment)

# You'll need to break each paragraph into sentences

# 0 is neutral. 
# +# = positive sentiment. 
# -# is negative sentiment
calculate_score(poetCorpus$content[1])

# one score per sentence
calculate_sentiment(poetCorpus$content[1])

# c_t_p gives a detailed score for each sentence
calculate_total_presence_sentiment(poetCorpus$content[1])

# saotd -------------
# _S_entiment _A_nalysis _O_f _T_witter _D_ata
# requires access to twitter API - so defunct

# sentiment.ai -------
# requires miniconda and python 3.8.10
install.packages("sentiment.ai")
library(sentiment.ai)

init_sentiment.ai() # init miniconda
install_sentiment.ai()
sentiment_score(poetCorpus$content[1])

# SentimentAnalysis --------
# impressive collection of tools against multiple dictionaries
# works with tm data objects
# doesn't require installation of external libraries
install.packages("SentimentAnalysis")
library(SentimentAnalysis)

# produces many statistics
analyzeSentiment(poetCorpus$content[1])
analyzeSentiment(poetCorpus)

# sentimentr ------------
# specialized sentiment analysis
# Details: https://github.com/trinker/sentimentr
# this is an advanced tool. 
install.packages("sentimentr")
library(sentimentr)

sentiment(poetCorpus$content[1])
plot(sentiment(poetCorpus$content[1]))

# sentometrics --------
# An Integrated Framework for Textual Sentiment Time Series Aggregation and Prediction
# https://sentometrics-research.com/sentometrics/
# https://github.com/DataWanderers/sentometrics.app
install.packages("sentometrics")
library(sentometrics)

# sentopics -----------
# framework. Works with Quanteda
# complex package
install.packages("sentopics")
library(sentopics)
library(tm)
poetTokens <- tokens(poetCorpus$content[1]) 
poetLDA <- LDA(poetTokens)
poetLDAgrow <- grow(poetLDA)
topWords(poetLDAgrow)


# syuzhet ------------
# quick and easy sentiment analysis
install.packages("syuzhet")
library(syuzhet)
get_sentiment(poetCorpus$content[1])
plot(get_sentiment(poetCorpus$content))

# tardis -----------
# Text Analysis with Rules and Dictionaries for Inferring Sentiment
# simple to use
install.packages("tardis")
library(tardis)
tardis(poetCorpus$content[1]) # best to get sentences

# transforEmotion ---------
# uses miniconda, reticulate, and python
install.packages("transforEmotion")
library(transforEmotion)

# tsentiment ---------
# twitter sentiment
# depends on the twitter api
install.packages("tsentiment")
library(tsentiment)

# vader ------------
# tuned to social media
# Valence Aware Dictionary and sEntiment Reasoner
install.packages("vader")
library(vader)
get_vader(poetCorpus$content[1])
