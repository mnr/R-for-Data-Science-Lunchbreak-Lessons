# NLP with quanteda

# install.packages("quanteda")
library(quanteda)

# quanteda can import several types of corpus.
# We'll use RT_corpus, the Vcorpus created in exercise file 01_164

RT_quant <- corpus(RT_corpus)
# quanteda corpus is essentially the same as tm corpus

# read first text from corpus
summary(RT_quant)
texts(RT_quant)[1]

# explore the corpus
RT_summaryDF <- summary(RT_quant) # produces data frame
# Which of Rabindranath Tagore works have most sentences?
RT_summaryDF[RT_summaryDF$Sentences == max(RT_summaryDF$Sentences), "id"]

# how to fix missing metadata
docvars(RT_quant)
docvars(RT_quant, field = "author") <- "Rabindranath Tagore"

# explore with kwic (keywords in context)
# find stories with word "bird")
kwic(RT_quant, "bird")

# create a document-term matrix. Quanteda calls this document-feature
# this includes removal of stopwords, punctuation, numbers, stemming, etc.
RT_dfm <- dfm(RT_quant, 
              remove = stopwords("english"),
              stem = TRUE,
              remove_punct = TRUE)

topfeatures(RT_dfm) # most frequent terms

textplot_wordcloud(RT_dfm, 
                   min_count = 300,
                   color = c("green", "blue", "red")) # wordcloud

# quanteda has good documentation
# http://quanteda.io/reference/index.html

# handy comparison of quanteda, tm and tidytext
# http://quanteda.io/articles/pkgdown/comparison.html

# lots more...
# https://quanteda.io/