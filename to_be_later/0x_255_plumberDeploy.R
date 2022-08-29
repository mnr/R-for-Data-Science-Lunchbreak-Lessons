# plumber deploy

# https://www.rplumber.io/articles/hosting.html

# create an account with https://www.digitalocean.com
# https://github.com/meztez/plumberDeploy

# install plumber deploy
install.packages("plumberDeploy")
remotes::install_github("rstudio/plumber")
library(plumberDeploy)

# connect to digital ocean
analogsea::account() # validate

# 
plumbSSHKey <- analogsea::key_create("plumberSSH", readLines("~/.ssh/id_rsa.pub"))


# this stuff doesn't work ------------------
# I'm using an old laptop 

# install R
# sudo apt-get update
# sudo apt-get install r-base

# install plumber
# R
# install.packages("plumber")
# check to make sure this will work

# running pm2
# sudo npm install -g pm2
# pm2 --version

# setup for pm2 auto-boot at rpi restart
# pm2 startup 

# create and copy these files to linux
# 01_253_SFplumber.r
# 01_255_runMyPlumberScript.R

# make them executable
# chmod a+x 01*

# run it for test
# 

# Another way: rstudio server Open Source Edition
# https://www.rstudio.com/products/workbench/comparison/

# download the server
# https://www.rstudio.com/products/rstudio/download-server/

# accessing server
# https://support.rstudio.com/hc/en-us/articles/200552306-Getting-Started

# set up rpi
# https://community.rstudio.com/t/setting-up-your-own-shiny-server-rstudio-server-on-a-raspberry-pi-3b/18982
