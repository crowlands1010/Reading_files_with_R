if (!file.exists("data")) {
  dir.create("data")
}

fileUrl <- "https://thiswillbetheurltosomesortofdatafile" ##testdata
download.file(fileUrl,destfile="./a/place/to/store/data", method = "libcurl") ##teststorage
list.files("./data")
