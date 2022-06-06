# quarto

# https://quarto.org/docs/get-started/hello/rstudio.html
# open hello.qmd
# mnr@Marks-MacBook-Pro ~ % which quarto
/usr/local/bin/quarto
mnr@Marks-MacBook-Pro ~ % cd /usr/local/bin
mnr@Marks-MacBook-Pro bin % ls -al quarto
lrwxr-xr-x  1 root  wheel  31 Jun  1 12:24 quarto -> /Applications/quarto/bin/quarto
mnr@Marks-MacBook-Pro bin % rm quarto
rm: quarto: Permission denied
mnr@Marks-MacBook-Pro bin % sudo rm quarto
Password:
  mnr@Marks-MacBook-Pro bin % which quarto
quarto not found