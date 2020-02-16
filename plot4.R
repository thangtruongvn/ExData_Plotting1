## Script plot1.R should be run before this one so that the data is already prepared

par(mfrow = c(2,2), mar = c(5,4,2,1))

plot(elc_power_cons$DateTime, elc_power_cons$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power", main = "")

plot(elc_power_cons$DateTime, elc_power_cons$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", main = "")

plot(elc_power_cons$DateTime, elc_power_cons$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
points(elc_power_cons$DateTime, elc_power_cons$Sub_metering_1, type = "l", col = "grey")
points(elc_power_cons$DateTime, elc_power_cons$Sub_metering_2, type = "l", col = "red")
points(elc_power_cons$DateTime, elc_power_cons$Sub_metering_3, type = "l", col = "blue")
legend("topright", bty = "n", lty = 7, lwd = 1, col = c("grey", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), xjust = 1, yjust = 1, x.intersp = 0.5, y.intersp = 0.4, cex = 1, seg.len = 1, xpd = TRUE)

plot(elc_power_cons$DateTime, elc_power_cons$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global reactive power", main = "")

dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()