### Create plot 1

# Read in the data
source("read_data.R")

# Adjust the global font size
par(cex = 0.75)

# Draw a histogram
with(data.subset, hist(Global_active_power,
                       col = "red",
                       main = "Global Active Power",
                       xlab = "Global Active Power (kilowatts)"))

# Save the histogram to a file named "plot1.png"
dev.copy(png, file = "plot1.png")
dev.off()