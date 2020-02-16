## Script plot1.R should be run before this one so that the data is already prepared

plot(elc_power_cons$DateTime, elc_power_cons$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()