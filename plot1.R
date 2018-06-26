#Exploratory Data Analysis
#Project 1

#Loading and Subsetting Data

proj_data <- read.csv("~/Desktop/Coursera /Exploratory Data Analysis /EDA_R/household_power_consumption.txt", 
                                        sep=";", na.strings="?")
library("lubridate")
library(dplyr)
study_data <- filter(proj_data, Date == "1/2/2007" | Date == "2/2/2007")

#Plot 1
names(study_data)
with(study_data, hist(Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
                      ylab = "Frequency", main = "Global Active Power"))
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
