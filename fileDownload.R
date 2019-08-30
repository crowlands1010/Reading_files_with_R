##script for downloading data from internet
##this file is specific to a lecture on coursera, but can be modified.

if (!file.exists("data")) {
  dir.create("data")
}

fileUrl <- "https://data.baltimorecity.gov/api/views/aqgr-xx9h/rows.csv?accessType=DOWNLOAD" ##testdata
download.file(fileUrl,destfile="./data/cameras.csv") ##teststorage
list.files("./data")