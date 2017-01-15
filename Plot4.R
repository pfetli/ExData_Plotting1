## === Exploratory Data Analysis
## Peer-graded Assignment 
## Week 1: Plot 4



## == Start code ==
getwd()
# = Load data
roh.dat <- read.delim("household_power_consumption.txt",header=TRUE,sep=";",
                      dec=".",na.strings="?", stringsAsFactors = FALSE)
str(roh.dat)
# = Create Subset
dat.sub <- roh.dat[roh.dat$Date %in% c("1/2/2007","2/2/2007"),]
table(dat.sub$Date)
str(dat.sub)
# = Make the dates nice
dat.sub$datetime <- strptime(paste(dat.sub$Date, dat.sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


# = Start grafic: width and hight 480 pixel
png("plot4.png", width=480, height=480)
# set graphical parameters
par(mfrow = c(2, 2)) 
# plot 1
plot(dat.sub$datetime,dat.sub$Global_active_power, type="l",ylab="Global Active Power", xlab="")
# plot 2
plot(dat.sub$datetime,dat.sub$Voltage, type="l",xlab="datetime",ylab="Voltage")
# plot 3
plot(dat.sub$datetime, dat.sub$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(dat.sub$datetime, dat.sub$Sub_metering_2, type="l", col="red")
lines(dat.sub$datetime, dat.sub$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2.5, bty="n", col=c("black", "red", "blue"))
# plot 4
plot(dat.sub$datetime,dat.sub$Global_reactive_power, type="l",
     xlab="datetime",ylab="Global_reactive_power")
dev.off()










