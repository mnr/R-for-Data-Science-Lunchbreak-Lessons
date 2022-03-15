# choose

# display in Rstudio viewer
# copy this to a markdown document
<font size="160">$$\binom{n}{k}$$</font>
# command-shift-k
# right-click to set up zoom at 250%

# binomial coefficient
# indexed by a pair of integers: n and k
# n >= k >= 0
# notated as $\binom{n}{k}$ 
# pronounced "n choose k"

choose(5,2)
# combn() all possible combinations
combn(5,2)

# another example
choose(6,3)
combn(6,3)

# lchoose is the log of choose (although it evaluates as false)
lchoose(5,2) == log(choose(5,2))
