fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "question1.csv")

question1 <- read.table("./question1.csv", sep=",", header = TRUE)

head(question1)

tables()
getwd()

onehundred <- subset(question1, VAL >= 24 )


library(openxlsx)


fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "./question2.xlsx",mode="wb")



dat <- read.xlsx("./question2.xlsx",cols=7:15,rows=18:23)

answer<-sum(dat$Zip*dat$Ext,na.rm=T)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl, destfile = "question5.csv")

DT<-fread("question5.csv")
