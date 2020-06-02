# interactive plotting

# install.packages("jpeg")
library(jpeg)
myImage <- as.raster(readJPEG("0301771_small.jpg"))
plot(1:10)
rasterImage(myImage, 
            xleft = 0,
            ybottom = 0,
            xright = 100,
            ytop = 100)
# now that I've drawn the raster image, I can count stars
locator(10)

# does this work on your system?
dev.capabilities("locator")

# connector type. default = n (none). p= points, l=lines, o=both, 
locator(10, type = "o")
# or add other par() values
locator(10, type = "o", col = "yellow", lwd = 3)

