
# loads the data
source("loadData.R")

# opens the PNG device
png(filename = "plot4.png", width = 480, height = 480)

#divides the area in 2 rows and 2 columns
par(mfrow = c(2, 2))

# makes the top-left plot: 
plot(x = data$DateTime, 
     y = data$Global_active_power,
     xlab = "",
     ylab = "Global Active Power",
     type = "l")

# makes the top-right plot
plot(x = data$DateTime, 
     y = data$Voltage,
     xlab = "datetime",
     ylab = "Voltage",
     type = "l")

# makes the bottom-left plot:
plot(data$DateTime, data$Sub_metering_1,
     xlab = "",
     ylab = "Energy sub metering",     
     type = "l", 
     col = "black")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright",  
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1,
       bty = "n")

# makes the bottom-right plot: 
plot(x = data$DateTime, 
     y = data$Global_reactive_power,
     xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "l")

# closes the device
dev.off()