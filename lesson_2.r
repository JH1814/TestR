# Simple Pie Chart (Lecture 2: Slide 14)
slices <- c(10, 12, 4, 16, 8)
lbls <- c("USA", "GB", "AUS", "DE", "FR")
pie(slices, labels = lbls, col=rainbow(length(lbls)), main="Pie Chart of Countries")
pie(slices, labels = lbls, col=palette, main="Pie Chart of Countries")

# Bar plot (Lecture 2: Slide 15)
barplot(slices, main="Bar plot of countries",
        xlab="Countries", col=rainbow(length(lbls)),
        names.arg=c("USA", "GB", "AUS", "DE", "FR")) 

# Pie Chart with Percentages (Lecture 2: Slide 15) 
slices <- c(10, 12, 4, 16, 8)
lbls <- c("USA", "GB", "AUS", "DE", "FR")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # add % to labels
pie(slices, labels = lbls, col=rainbow(length(lbls)), main="Pie Chart of Countries")

## Another case showing pie() is rather fun than science:
## (original by FinalBackwardsGlance on http://imgur.com/gallery/wWrpU4X)
pie(c(Sky = 78, "Sunny side of pyramid" = 17, "Shady side of pyramid" = 5),
    init.angle = 315, col = c("deepskyblue", "yellow", "yellow3"), border = FALSE)

# Bar Plot (Lecture 2: Slide 17) 
data("mtcars")
names(mtcars)

counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", col = palette,
        xlab="Number of Gears",
        names.arg=c("3 Gears", "4 Gears", "5 Gears")) 

counts <- table(mtcars$cyl)
barplot(counts, main="Car Distribution", col = palette, 
        xlab="Cylinders") 

percentages <- round(100 * counts / sum(counts), 1)  # Rounded to 1 decimal place
# Create the barplot
barplot(percentages,
        col = palette,
        ylim = c(0, 50),
        main = "Category Distribution in Percentages",
        ylab = "Percentage",
        xlab = "Category")

# Optionally add text labels above bars
text(x = barplot(percentages, plot = FALSE),
     y = percentages,
     labels = paste0(percentages, "%"),
     pos = 3, cex = 0.9)

# Histogram (Lecture 2: Slide 18)
hist(mtcars$mpg, 
     main = "Histogram of miles per gallon", 
     xlab= "Miles per gallon", 
     ylab = "No. of cars", 
     border="red", 
     col="yellow",
     xlim=c(10,40),
     las=1, 
     breaks=5)


library(wesanderson)
palette <- wes_palette("Darjeeling1", n = 5)
