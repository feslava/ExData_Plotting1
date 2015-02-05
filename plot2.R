
# loads the data
source("loadData.R")

# opens the PNG device
png(filename = "plot2.png", width = 480, height = 480)

# makes the plot
plot(x = data$DateTime, 
     y = data$Global_active_power,
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "l")

# closes the device
dev.off()