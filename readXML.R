library(XML)
fileUrl <- readLines("https://www.nodc.noaa.gov/archive/arc0060/0112357/0112357.1.1.xml")
doc <- xmlTreeParse(fileUrl,useInternalNodes=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)

names(rootNode)

##rootNode[[1]]

##rootNode[[1]][[1]]

##rootNode[[2]]

##rootNode[[3]]

xmlSApply(rootNode,xmlValue)