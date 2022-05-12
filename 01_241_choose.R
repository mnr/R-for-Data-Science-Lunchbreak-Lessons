# choose

# to display the symbol in Rstudio viewer
# 1) create a new markdown document (new file -> markdown file)
# 2) copy the following line to the markdown document
<font size="160">$$\binom{n}{k}$$</font>
# 3) save the markdown document
# 4) Then, with the new document showing...command-shift-k
# 5) to enlarge, right-click on symbol, math settings->zoom factor to set up zoom at 250%
  

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

# lchoose is the log of choose
lchoose(5,2)
log(choose(5,2))
