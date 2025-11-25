# Install the 'readxl' package (only needs to be done once)
# This package lets R read Excel (.xls or .xlsx) files
install.packages("readxl")  

# Load the 'readxl' package so you can use its functions
library(readxl)

# --- Option 1: Read the Excel file directly using the full path ---

# NOTE: The file path below ("C:/Users/ma1156645/Desktop/bit_grades.xlsx")
# will be DIFFERENT on your computer.
# Change it to match the location of your Excel file.
bit_grades <- read_excel("C:/Users/ma1156645/Desktop/bit_grades.xlsx")



# --- Option 2: Set working directory first, then read the file ---

# NOTE: Again, the path inside setwd("C:/Users/ma1156645/Desktop/") will be different for your computer.
# Replace it with the folder path where your Excel file is saved.
setwd("C:/Users/ma1156645/Desktop/")

# Display the current working directory (to confirm the change)
getwd()

# Read the Excel file from the working directory and save it as 'bit_grades'
bit_grades <- read_excel("bit_grades.xlsx")


# --- Data Visualization ---

# Create a boxplot of the 'grade' column to show distribution and outliers
boxplot(bit_grades$grade)

# Create a histogram of the 'grade' column to show frequency distribution
hist(bit_grades$grade)

# --- Basic Statistical Analysis ---

# Calculate the mean (average) of all grades
mean(bit_grades$grade)

# Find the maximum (highest) grade
max(bit_grades$grade)

# Find the minimum (lowest) grade
min(bit_grades$grade)

# Find both the minimum and maximum values as a range
range(bit_grades$grade)

# Calculate the standard deviation (how spread out the grades are)
sd(bit_grades$grade)
