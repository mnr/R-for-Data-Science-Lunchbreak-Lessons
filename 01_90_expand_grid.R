# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: 
# affiliate: https://linkedin-learning.pxf.io/rweekly_expandGrid

#compare expand.grid vs combn

# we talked about combn earlier.
# use combn to find all possible combinations
isCat.combn <- combn(c("a","c", "t","A","C", "T",".a.",".c",".t"), 3)


# combn vs expand.grid


# combn produces a matrix of all combinations
photos.combn <- combn(c("Bride", "Groom", 
                      "Bride's Parents", 
                      "Groom's Parents",
                      "Bride's Siblings",
                      "Groom's Siblings"), 3)
photos.combn <- t(photos.combn)

# expand.grid produces a dataframe of vector A against vector B
photos.expand.grid <- expand.grid(c("Bride", "Bride's Parents", "Bride's Siblings"),
                                c("Groom", "Groom's Parents", "Groom's Siblings"))

photos.expand.grid <- expand.grid(c("Bride", "Groom"),
                                  c("Bride's Parents", "Groom's Parents"),
                                  c("Bride's Siblings", "Groom's Siblings"))

