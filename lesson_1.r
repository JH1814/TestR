## Combine Values into a Vector or List
x <- c(8, 8, 5, 3, 3, 3, 6, 2, 10)
## Mean
mean(x)
## Median
median(x)
##Range
range(x)
max(x) - min(x)

## Salary data
x <- c(1, 3, 5, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10)
mean(x)
mode(x)
quantile(x, probs = c(0.25, 0.5, 0.75), type = 2)
range(x)
max(x) - min(x)
IQR(x)

## Monthly income
x <- c(7, 4, 5, 84)
sd(x)
var(x)