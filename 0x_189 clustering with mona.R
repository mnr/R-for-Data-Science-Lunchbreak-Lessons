# clustering with mona
# Hierarchical method
# MONothetic analysis clustering of binary variables
# similar to divisive - starts with one cluster

# Titanic has three binary attributes

# convert from array to data.frame
#https://stackoverflow.com/questions/59447399/how-to-transform-the-titanic-data-set
d1 <- as.data.frame(Titanic)
Tita <- d1[rep(seq_len(nrow(d1)), d1$Freq),1:4]
row.names(Tita) <- NULL

str(Tita)
# sex, age, and survived are binary

Tita$Survived

smallTitanic <- Tita[sample(nrow(Tita), 30),
                     c("Sex","Age","Survived")]


library(cluster)
monaTitanic <- mona(smallTitanic)
plot(monaTitanic)
monaTitanic

data.frame("order"=monaTitanic$order,
           "Row Number"=monaTitanic$order.lab,
           "Split Variable"=c(monaTitanic$variable,"NULL"),
           "Step Level"=c(monaTitanic$step,"0")
)
