### Create plot 3

# Read in the data
source("read_data.R")

# Adjust the global font size
par(cex = 0.75)

# Draw a line chart
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
       cex = 1,
       x.intersp = 0.7,
       y.intersp = 0.8,
       text.width = 40000,
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Save the chart to a file named "plot3.png"
dev.copy(png, file = "plot3.png")
dev.off()