# exercise files for LinkedIn Learning: https://linkedin-learning.pxf.io/rweekly_browser
# Description: Example file for browser

idx_affiliate <- "https://linkedin-learning.pxf.io/rweekly_browser" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- "browser()" 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# main idea: Using the R debugger

printMyNumber <- function (aNumber) {
  print(aNumber)
}

thisisafunction <- function(someNumber) {
  keepRunning <- TRUE
  browser()
  while(isTRUE(keepRunning)) {
    printMyNumber(someNumber)
  }
}

thisisafunction(4)
