#Plot 2
study_data$datetime <- strptime(paste(study_data$Date, study_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(study_data$datetime, study_data$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()
