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

# Tidytext ----------


# texter ----------
# works with tidyverse & tidytext to provide easy sentiment analysis
# focused on nrc dictionary
install.packages("texter")
library(texter)

counter(emotions_df[1,"text"], c("love", "sad"))
top_Sentiments(emotions_df[2,"text"], plot = TRUE)
sentimentAnalyzer(emotions_df[1:3,"text"], details = TRUE)
top_bigrams(emotions_df[3,"text"], bigram_size = 10)
