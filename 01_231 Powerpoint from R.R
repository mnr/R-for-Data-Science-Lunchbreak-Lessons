# building powerpoint with R

# Use Rmarkdown

# rstudio:file:new file: r markdown...
# ...then...
# choose presentation:powerpoint

# dynamic date - include this in header
date: "`r Sys.Date()`"


https://bookdown.org/yihui/rmarkdown/powerpoint-presentation.html
https://pandoc.org/MANUAL.html#slide-shows
https://github.com/jgm/pandoc/blob/master/test/pptx/reference-depth.pptx

# html options often don't work. For example: df_print = paged fails.
# instead for tables, use kable as illustrated in example