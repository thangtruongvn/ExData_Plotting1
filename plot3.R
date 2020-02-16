## Script plot1.R should be run before this one so that the data is already prepared

plot(elc_power_cons$DateTime, elc_power_cons$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
points(elc_power_cons$DateTime, elc_power_cons$Sub_metering_1, type = "l", col = "grey")
points(elc_power_cons$DateTime, elc_power_cons$Sub_metering_2, type = "l", col = "red")
points(elc_power_cons$DateTime, elc_power_cons$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 7, lwd = 1, col = c("grey", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), xjust = 0, yjust = 0.5, x.intersp = 0.5, y.intersp = 0.5, adj = c(0, 0.5))
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()