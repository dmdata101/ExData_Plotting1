
# PLOT 1

# File 'household_power_consumption.txt' is a subset of the complete data.
# It only contains data for Feb 1 2007 and Feb 2 2007
# Because it is a 'write' of a previous data.frame, no need for the specific 
# header, sep and na.strings functions any more because
# See source file '0-subset full data.R' for procedure.

data=read.table('household_power_consumption_filtered.txt')

# Convert date and time to a proper POSIXlt class, creates new 'DateTime' column
data$DateTime=strptime(paste(data$Date,data$Time),'%d/%m/%Y %R')

# Saves to file
png('plot1.png')

hist(data$Global_active_power,main='Global Active Power',col='red',xlab='Global Active Power (kilowatts)')

# Closes file
dev.off()