
library (lubridate)



## ---------- DEFINITIONS ----------

dataDir <- "./data"
urlFile <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
zipFile <- paste(dataDir, "household_power_consumption.zip", sep = "/")
dataFile <- paste(dataDir, "household_power_consumption.txt", sep = "/")



## ---------- DATA DOWNLOAD ----------

# creates the data directory (if it is necessary)
if (!file.exists(dataDir))
{
    dir.create(file.path(".", dataDir))
}
    
# downloads the data (if it doesn't exist)
if (!file.exists(zipFile)) 
{
    download.file(urlFile, destfile = zipFile)
}

# unzips the data (if it is necessary)
if (!file.exists(dataFile)) 
{
    unzip(zipFile, exdir = dataDir)
}



## ---------- DATA LOAD, FILTERING AND TRANSFORMATIONS ----------

# reads the data 
data <- read.table(dataFile, header = TRUE, sep = ";", na.strings = "?")

# coerces date and time columns
data$Date <- dmy(data$Date)
data$Time <- hms(data$Time)

# filters data
data <- subset(data, 
            year(Date) == 2007 & 
            month(Date) == 2 & 
            (day(Date) == 1 | day(Date) == 2))

# creates the DateTime column
data$DateTime <- data$Date + data$Time
