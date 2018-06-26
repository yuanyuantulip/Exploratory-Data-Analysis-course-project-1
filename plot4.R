#Plot 4
par(mfrow=c(2,2))
plot(study_data$datetime, study_data$Global_active_power, type = "l", 
     ylab = "Global Active Power", xlab = "")

plot(study_data$datetime, study_data$Voltage, type = "l",
     ylab = "Voltage", xlab = "datetime")

plot(study_data$datetime, study_data$Sub_metering_1, type = "l", 
                      xlab = "", ylab = "Energy sub metering")
with(study_data, lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(study_data, lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", lty=1, lwd = 2.5, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

plot(study_data$datetime, study_data$Global_reactive_power, 
     type="l", xlab="datetime", ylab="Global_reactive_power")

dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()
