# example file for LinkedIn Learning video https://linkedin-learning.pxf.io/rwkly_leftrightjoin

idx_affiliate <- "https://linkedin-learning.pxf.io/rwkly_leftrightjoin" # affiliate link to the video
idx_video <- "" # just the name of the video - used for lookup to the URL
idx_task <- "" # optional: This video beongs to this group
# Text for this link. Optional vector - c("main topic", "additional topic", "etc")
idx_topics <- c("left join","right join", "merge()", "names()") 
idx_build(idx_affiliate, idx_video, idx_task, idx_topics)

# Description: Example file for joins

# Need some data to play with
df1 <- data.frame(LETTERS, dfindex = 1:26)
df2 <- data.frame(letters, dfindex = c(1:10,15,20,22:35))

# LEFT (outer) JOIN: returns all rows from the left table, even if there are no matches in the right table.
merge(df1, df2, all.x=TRUE)

# RIGHT (outer) JOIN: returns all rows from the right table, even if there are no matches in the left table.
merge(df1,df2, all.y=TRUE)


# what if column names don't match?
names(df1) <- c("alpha", "lotsaNumbers")

merge(df1, df2, by.x = "lotsaNumbers", by.y = "dfindex")
 
