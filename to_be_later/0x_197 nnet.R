# nnet

titanicdf <- as.data.frame(Titanic)
# titanicdf <- titanicdf[ , -c(3,5)]

titanicNmRow <- nrow(titanicdf)
set.seed(1)
learningIDX <- sample(titanicNmRow, titanicNmRow/4 )

library(nnet)
titanicSurv <- nnet.formula(Survived ~ ., 
     data = titanicdf, 
     subset = learningIDX,
     size = 2)

data.frame(actualValues = titanicdf[-learningIDX, "Survived"],
           nnetPrediction = predict(titanicSurv, 
                   titanicdf[-learningIDX,]))
