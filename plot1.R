library(data.table)
library(dplyr)
library(lubridate)

## Preparation
## Let assume that the data file household_power_consumption.txt is available in the working folder
## This script "plot1.R" should be run first so that the data is prepared for the other plots as well

elc_power_cons <- fread("household_power_consumption.txt") %>% filter(Date %in% (c("1/2/2007", "2/2/2007"))) %>% select_all()
elc_power_cons <- filter_all(elc_power_cons, any_vars(. != '?')) # filter out missing data

elc_power_cons <- elc_power_cons %>% mutate(DateTime = paste(Date, Time, sep = " "))
elc_power_cons$DateTime <- strptime(elc_power_cons$DateTime, format = "%d/%m/%Y %H:%M:%S", tz = "GMT")

elc_power_cons$Date <- as.Date(elc_power_cons$Date) # convert Date to Date type

elc_power_cons$Global_active_power <- as.numeric(elc_power_cons$Global_active_power)

## Create plot1.png in the working folder
hist(elc_power_cons$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
