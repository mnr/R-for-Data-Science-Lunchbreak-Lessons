# stack provides a way to change the structure between names and qualities

# Stacking vectors concatenates multiple vectors into a single vector 
# ...along with a factor indicating where each observation originated. 

# sample data with multiple delimited keywords in "qualities"
mydataframe <- data.frame(fruit = c("Orange","Banana","Mango"),
                          qualities = c("Orange,VitaminC","Yellow,Potassium","Green,Emmm"),
                          stringsAsFactors = FALSE)
mydataframe # columns by name
stack(mydataframe) # columns by value - with column names 
# stack "pivots" the relationship between vector name and value

stack(mydataframe, select = fruit) # subset the "fruit" vector

# a complex example..
strsplit(mydataframe$qualities,",") # remember strsplit?

setNames(strsplit(mydataframe$qualities,","), mydataframe$fruit) # remember setnames?
# use the names from fruit to name the results of strsplit

stack(setNames(strsplit(mydataframe$qualities,","), mydataframe$fruit))
# create a dataframe with values split out and named by fruit  



