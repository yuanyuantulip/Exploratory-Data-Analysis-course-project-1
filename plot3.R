#Plot 3
with(study_data, plot(datetime, Sub_metering_1, type = "l", 
                      xlab = "", ylab = "Energy sub metering"))
with(study_data, lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(study_data, lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", lty=1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()
