
# loads the data
source("loadData.R")

# opens the PNG device
png(filename = "plot1.png", width = 480, height = 480)

# makes the plot
hist(data$Global_active_power, 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", 
     col = "red")

# closes the device
dev.off()