# interactive plotting

install.packages("jpeg")
library(jpeg)


download.file(url = "https://www.jpl.nasa.gov/spaceimages/images/wallpaper/PIA17811-800x600.jpg",
              destfile = "starrySky.jpg",
              mode = "wb")
# larger files may cause locator to freeze

myImage <- as.raster(readJPEG("starrySky.jpg"))


plot(1:10)
rasterImage(myImage, 
            xleft = 0,
            ybottom = 0,
            xright = 100,
            ytop = 100)
# now that I've drawn the raster image, I can find the location of stars
locator(10)

# does this work on your system?
dev.capabilities("locator")

# connector type. default = n (none). p= points, l=lines, o=both, 
# or add other par() values
locator(10, type = "o", col = "yellow", lwd = 3)

