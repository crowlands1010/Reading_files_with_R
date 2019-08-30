##loading & reading local flat files
##important parameters: file, header, separator, row.names, and nrows
##this file is specific to a lecture on coursera, but can be modified.

cameraData <- read.table("./data/cameras.csv", sep=",",header=TRUE)
head(cameraData)