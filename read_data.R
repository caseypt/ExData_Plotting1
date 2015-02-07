# Read in the first 100 rows of the table to generate column classes
dataSample <- read.csv("data/household_power_consumption.txt",
                       sep = ";",
                       header = TRUE,
                       na.strings = "?",
                       nrows = 100)

classes <- sapply(dataSample, class)

# Read in the data
data <- read.csv("data/household_power_consumption.txt", 
                 sep = ";",
                 header = TRUE,
                 colClasses = classes,
                 na.strings = "?",
                 nrows = 2075259)

# Convert Date and Time column to Date and Date Time classes, respectively
data$Time <- strptime(paste(data$Date, data$Time, sep = " "), format="%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

# Subset data to assignment date range
data.subset <- subset(data, Date >= "2007/2/1" & Date <= "2007/2/2")