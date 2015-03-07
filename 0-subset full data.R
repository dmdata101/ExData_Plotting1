
#cleaning up the data

# cleaning up the data -- DO THIS ONCE ONLY
# read data as text
data1=read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?')
# filters only on plotted days
data2=subset(data1,data1$Date=='1/2/2007' | data1$Date=='2/2/2007',drop=TRUE)
# write filtered data to a file for faster read/write
write.table(data2,'household_power_consumption_filtered.txt')

