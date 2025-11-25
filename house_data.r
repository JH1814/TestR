# -------------------------------------------------
# A gentle introduction to R - WORKSHEET
# -------------------------------------------------

# Whenever there are three dots (...) you will have 
# to fill in your solution.

# *************************************
# 1. Load data and some preprocessing
# *************************************

# set working directory
setwd("/home/rstudio/Test/practise")

# load data
# Hint: use filename, header and sep argument
df <- read.csv('kc_house_data.csv', header = TRUE, sep = ",")

# check structure and data types of dataframe
str(df)

# format categorical variables as factors
df$waterfront <- factor(df$waterfront)
df$condition <- factor(df$condition)

# format selling date as date
df$date <- as.Date(substr(as.character(df$date), 1, 8), format = '%Y%m%d')

# compute age of house in 2015
df$age <- 2015 - df$yr_built

# *************************************
# 2. Descriptive statistics
# *************************************

# number of rows in dataframe
nrow(df)

# find number of columns in a similar way
ncol(df)

# find the max and min selling date in dataframe
# Hint: use range function
range(df$date)

# statistical summary of all variables in df
summary(df)

# find statistical summary of only price
# Hint: you can use the same function as above
summary(df$price)

# find standard deviation of price
sd(df$price)

# compute the inter-quartile range
# Hint: google 'iqr in r' and try to find the appropriate function yourself
IQR(df$price)

# plot a histogram of price
# Hint: set different numbers for the arguemnt 'breaks' and see what happens
hist(df$price, breaks = 30, col = 'grey')

# what is the 90% quantile of price
# Hint: in R, we add the quantile we are looking for as a decimal number
quantile(df$price, 0.9)

# create a boxplot of price depending on waterfront
boxplot(price ~ waterfront, data = df, ylab = df$price, xlab = df$waterfront)

# create a boxplot of price depending on condition
# Hint: this is very similar to the command above
boxplot(price ~ waterfront, data = df, ylab = df$price, xlab = df$condition)

# create barblot to show the number of waterfront and other properties
barplot(xtabs(~ waterfront, data=df))

# same for conditions of the house
# Hint: again very similar to above
barplot(xtabs(~ condition, data=df))

# now we want to know the exact number of houses per condition
# Hint: use table() function
table(df$condition)

# compute statistical summary of price depending on waterfront
# Hint: fill in the function, for a statistical summary: summary,
# try out other functions, e.g. mean, var, sd
by(df$price, df$waterfront, ...)

# *************************************
# 3. Correlation and regression
# *************************************

# create a scatterplot of price vs. sqft of living space
plot(price ~ sqft_living, data = df, col = waterfront, ylab = 'price', xlab = 'sqft living')

# create a scatterplot of price vs. age
plot(df$price, df$age)

# Spearman correlation between price and age
# Hint: first and second arguments are price and age column of dataframe
cor(df$price, df$age, method = "spearman")

# regression analysis
out <-lm(price ~ sqft_living + age + waterfront, data = df)
summary(out)

# use regression model to predict
predict(out, newdata = list(sqft_living = 3000, age = 30, waterfront = factor(0)), interval = 'pred')

# scatterplot with regression line
plot(price ~ sqft_living, data = df, col = waterfront, ylab = 'price', xlab = 'sqft living')
out <-lm(price ~ sqft_living, data = df)
abline(out, col = "seagreen")


