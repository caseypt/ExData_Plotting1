### Create plot 2

# Read in the data
source("read_data.R")

# Draw a line chart
with(data.subset, plot(Time, Global_active_power,
                       typ = "l",
                       ylab = "Global Active Power (kilowatts)",
                       xlab = ""
                       ))
  
# Save the chart to a file named "plot2.png"
dev.copy(png, file = "plot2.png")
dev.off()