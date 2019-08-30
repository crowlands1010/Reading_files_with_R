##loading & reading local flat files
##important parameters: file, header, separator, row.names, and nrows
##this file is specific to a lecture on coursera, but can be modified.

##read.csv can be interchanged with read.table. I'm reading a .csv in this specific instance.
cameraData <- read.csv("./data/cameras.csv", sep=",",header=TRUE)
head(cameraData)
