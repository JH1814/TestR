# Using data from slide 13
x <- c(6,9,12,15,18,25)
y <- c(20,18,10,8,9,4)
df <- data.frame(x,y)

# Calculating the correlation coefficient
cor(df$x, df$y)

# Regression
fit <- lm(y ~ x, data = df)

# Scatter plot
pdf("/home/Test/residplot0а.pdf")
plot(x, y, main = "Scatterplot",
     xlab = "x", ylab = "y", pch = 19, col = "blue", ylim = c(0,25), xlim = c(0,25))
dev.off()

pdf("/home/Test/residplot0b.pdf")
plot(x, y, main = "Scatterplot with Linear Regression and Residual Lines",
     xlab = "x", ylab = "y", pch = 19, col = "blue", ylim = c(0,25), xlim = c(0,25))
# Add regression line
abline(fit, col = "red", lwd = 2)

# Prediction
y_pred <- predict(fit)

# Add vertical lines from each point to the regression line
for (i in 1:length(x)) {
  segments(x[i], y[i], x[i], y_pred[i], col = "black", lty = 2)
}
dev.off()

# Get residuals and fitted values
residuals <- resid(fit)
fitted <- fitted(fit)

# Residual plot
plot(fitted, residuals,
     main = "Residuals vs Fitted Values",
     xlab = "Fitted Values",
     ylab = "Residuals",
     pch = 19,
     col = "darkgreen")
abline(h = 0, col = "red", lwd = 2, lty = 2)  # Add horizontal line at 0

fit <- lm(y1 ~ x1, data = anscombe)
# Get residuals and fitted values
residuals <- resid(fit)
fitted <- fitted(fit)
pdf("/home/Test/residplot1.pdf")
# Residual plot
plot(fitted, residuals,
     main = "Residuals vs Fitted Values",
     xlab = "Fitted Values",
     ylab = "Residuals",
     pch = 19,
     col = "darkgreen")
abline(h = 0, col = "red", lwd = 2, lty = 2)  # Add horizontal line at 0
dev.off()

fit <- lm(y2 ~ x2, data = anscombe)
# Get residuals and fitted values
residuals <- resid(fit)
fitted <- fitted(fit)
pdf("/home/Test/residplot2.pdf")
# Residual plot
plot(fitted, residuals,
     main = "Residuals vs Fitted Values",
     xlab = "Fitted Values",
     ylab = "Residuals",
     pch = 19,
     col = "darkgreen")
abline(h = 0, col = "red", lwd = 2, lty = 2)  # Add horizontal line at 0
dev.off()

# Homoskedasticity
set.seed(905)

# generate heteroskedastic data 
X <- 1:500
Y <- rnorm(n = 500, mean = X, sd = 20)

# estimate a simple regression model
reg <- lm(Y ~ X)

# plot the data
pdf("/home/Test/homoscedasticity.pdf")
plot(x = X, y = Y, 
     pch = 16, ylim = c(-100,1500),
     col = "steelblue", main = "Homoskedasticity")
grid()
# add the regression line to the plot
abline(reg, 
       col = "red", 
       lwd = 2)
legend("topleft","Regression line",col="red",lwd=1.5)
dev.off()

# Heteroskedasticity
set.seed(905)

# generate heteroskedastic data 
X <- 1:500
Y <- rnorm(n = 500, mean = X, sd = 0.6 * X)

# estimate a simple regression model
reg <- lm(Y ~ X)

# plot the data
pdf("/home/Test/heterocedasticity.pdf")
plot(x = X, y = Y, 
     pch = 16, ylim = c(-100,1500),
     col = "steelblue", main = "Heteroskedasticity")
grid()
# add the regression line to the plot
abline(reg, 
       col = "red", 
       lwd = 2)
legend("topleft","Regression line",col="red",lwd=1.5)
dev.off()




