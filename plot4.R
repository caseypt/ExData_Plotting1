### Create plot 4

# Read in the data
#source("read_data.R")

# Setup the canvas for 4 charts
par(mfrow = c(2, 2))

# Add a modified version of plot2 first
with(data.subset, plot(Time, Global_active_power,
                       typ = "l",
                       ylab = "Global Active Power",
                       xlab = ""
))

# Add a new plot with voltage next
with(data.subset, plot(Time, Voltage,
                       typ = "l",
                       ylab = "Voltage",
                       xlab = "datetime"
))

# Add a modified version of plot 3 next
with(data.subset, plot(Time, Sub_metering_1,
                       typ = "l",
                       ylab = "Energy sub metering",
                       xlab = ""
))

# Add more lines
with(data.subset, lines(Time, Sub_metering_2, col = "red"))
with(data.subset, lines(Time, Sub_metering_3, col = "blue"))

# Give the chart a legend
legend("topright",
       lty = c(1,1),
       xjust = 1,
       cex = 0.80,
       x.intersp = 0.5,
       y.intersp = 0.3,
       bty = "n",
       text.width = 85000,
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Add a modified version of plot2 first
with(data.subset, plot(Time, Global_reactive_power,
                       typ = "l",
                       ylab = "Global_reactive_power",
                       xlab = "datetime"
))

# Save the charts to a file named "plot4.png"
dev.copy(png, file = "plot4.png")
dev.off()