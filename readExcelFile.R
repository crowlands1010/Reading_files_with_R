##downloads excel spreadsheet from internet
##is for specific lecture on coursera, but can be modified.
if(!file.exists("data")){dir.create("data")}
fileUrl <- "https:file.xlsx"
download.file(fileUrl,destfile="./data/filename.xlsx")
dateDownloaded <- date()

library(xlsx)
appricotData <- filename.xlsx("./data/filename.xlsx")
head(appricotData)
