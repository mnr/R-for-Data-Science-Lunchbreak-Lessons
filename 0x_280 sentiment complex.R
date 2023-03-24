# sample corpus ---------
library(tm)

emotions_df <- data.frame(
  doc_id = c("THE COMING NIGHT",
             "Love Letters of Nathaniel Hawthorne",
             "Big Dummy's Guide to the Internet"),
  text = c("THIS week has been one of heavy sorrow to very many.  The neighbourhood
has lost one who for many years has stood foremost in large-hearted
Christian benevolence.  The poor have been deprived of a kind friend, to
whose liberality they might ever resort.  The children have been bereaved
of one who has for years been anxious to devote her attentive care to
their early training; and all who have ever needed a sympathizing friend
have followed one this day to the grave as warm-hearted, energetic, and
intelligent as is often to be met with in society.  Her character is well
described in some lines written by herself on the death of one she dearly
loved—",
           "Sweetest, I know not when I shall see thee; but I trust it will not be
longer than the end of next week. I love thee! I love thee! I wouldst
thou wert with me; for then would my labor be joyful--and even now it
is not sorrowful. Dearest, I shall make an excellent husbandman. I
feel the original Adam reviving within me.",
           "Increasingly, computers come with modems already installed. If
yours didn't, you'll have to decide what speed modem to get.  Modem
speeds are judged in bps rate or bits per second.  One bps means
the modem can transfer roughly one bit per second; the greater the
bps rate, the more quickly a modem can send and receive information.
A letter or character is made up of eight bits."),
  author = c("THE REV.  EDWARD HOARE, A.M.",
             "Nathaniel Hawthorne",
             "Electronic Frontier Foundation")
)
emotions_corpus <- Corpus(DataframeSource(emotions_df))

summary(emotions_corpus)

# mscstexta4r ----------
# Microsoft Cognitive Services Text Analytics
# https://azure.microsoft.com/en-us/products/cognitive-services/text-analytics/
# requires an online account with Microsoft
install.packages("mscstexta4r")
library(mscstexta4r)

# RSentiment -----------
# documentation is sparse
# requires negative and positive examples
# requires java runtime
install.packages("RSentiment")
library(RSentiment)

# You'll need to break each paragraph into sentences

# 0 is neutral. 
# +# = positive sentiment. 
# -# is negative sentiment
calculate_score(emotions_df[,"text"])

# one score per sentence
calculate_sentiment(poetCorpus$content[1])

# c_t_p gives a detailed score for each sentence
calculate_total_presence_sentiment(poetCorpus$content[1])


# sentimentr ------------
# specialized sentiment analysis
# Details: https://github.com/trinker/sentimentr
# this is an advanced tool. 
install.packages("sentimentr")
library(sentimentr)

sentiment(emotions_df[,"text"])
plot(sentiment(emotions_df[3,"text"]))

# sentometrics --------
# An Integrated Framework for Textual Sentiment Time Series Aggregation and Prediction
# https://sentometrics-research.com/sentometrics/
# https://github.com/DataWanderers/sentometrics.app
install.packages("sentometrics")
library(sentometrics)


# SentimentAnalysis --------
# impressive collection of tools against multiple dictionaries
# works with tm data objects
# requires installation of SnoballC
install.packages("SentimentAnalysis")
library(SentimentAnalysis)

# produces many statistics
analyzeSentiment(emotions_corpus)


# sentopics -----------
# framework. Works with Quanteda
# complex package
install.packages("sentopics")
library(sentopics)
emotionTokens <- tokens(emotions_df[1,"text"])
emotionsLDA <- LDA(emotionTokens)
LDAgrow <- grow(emotionsLDA)
topWords(LDAgrow)


# Quanteda ----------

# Tidytext ----------
