## === Exploratory Data Analysis
## Peer-graded Assignment 
## Week 1: Plot 1



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
# = Start grafic
png("plot1.png", width=480, height=480)
hist(dat.sub$Global_active_power,col="red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()










