# Example file for https://linkedin-learning.pxf.io/rweekly_cut
# Description: cut to set intervals

numericVector <- runif(100, min = 1, max = 256 )

cut(numericVector, 3)
cut(numericVector, 3, labels = c("low","med","high"))
cut(numericVector, 3, labels = FALSE)

cut(numericVector,breaks = c(1,100,200,256))

