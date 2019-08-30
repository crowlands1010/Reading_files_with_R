if (!file.exists("data")) {
  dir.create("data")
}

fileUrl <- "https://data.baltimorecity.gov/Transportation/Fixed-Speed-Cameras/aqgr-xx9h/data" ##testdata
download.file(fileUrl,destfile="./data/cameras.csv") ##teststorage
list.files("./data")