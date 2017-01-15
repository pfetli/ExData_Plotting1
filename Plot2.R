## === Exploratory Data Analysis
## Peer-graded Assignment 
## Week 1: Plot 2



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
png("plot2.png", width=480, height=480)
plot(dat.sub$datetime,dat.sub$Global_active_power, type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.off()










