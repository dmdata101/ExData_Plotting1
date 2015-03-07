
# PLOT 3

# File 'household_power_consumption.txt' is a subset of the complete data.
# It only contains data for Feb 1 2007 and Feb 2 2007
# Because it is a 'write' of a previous data.frame, no need for the specific 
# header, sep and na.strings functions any more because
# See source file '0-subset full data.R' for procedure.

data=read.table('household_power_consumption_filtered.txt')

# Convert date and time to a proper POSIXlt class, creates new 'DateTime' column
data$DateTime=strptime(paste(data$Date,data$Time),'%d/%m/%Y %R')

# Saves to file
png('plot3.png')

par('pch'='.') # Sets symbol to dot '.'
plot(data$DateTime,data$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
lines(data$DateTime,data$Sub_metering_2,type='l',col='red')
lines(data$DateTime,data$Sub_metering_3,type='l',col='blue')
legend("topright", pch = '.', lty=1,col = c("black","blue", "red"),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))

# Closes file
dev.off()