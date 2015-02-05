
# loads the data
source("loadData.R")

# opens the PNG device
png(filename = "plot3.png", width = 480, height = 480)

# makes the plot
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
       lty = 1)

# closes the device
dev.off()