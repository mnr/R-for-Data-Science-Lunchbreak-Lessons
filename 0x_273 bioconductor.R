# what is bioconductor and how to use it

# what is bioconductor
# https://www.bioconductor.org

install.packages("BiocManager")
BiocManager::install()

# find software at
# https://www.bioconductor.org/packages/release/BiocViews.html#___Software

# install packages
BiocManager::install("EBImage")

# use library to load the package (same as Base R)
library("EBImage")

# Then - EBImage is ready to go
anImage <- readImage("https://apod.nasa.gov/apod/image/1801/M31Clouds_DLopez_1500.jpg")
display(anImage)
hist(anImage)

