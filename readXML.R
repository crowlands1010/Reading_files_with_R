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

##xmlSApply(rootNode,xmlValue)

##Extract elements by the attribute
##xpathSApply(rootNode,"//specificnodename",xmlValue)
xpathSApply(rootNode,"//sumtime",xmlValue)
xpathSApply(rootNode,"//modtime",xmlValue)
xpathSApply(rootNode,"//acctime",xmlValue)

##OutPut
##> xpathSApply(rootNode,"//sumtime",xmlValue)
##[1] "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00"
##[5] "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00"
##[9] "2013-08-23 11:07:10+00" "2013-08-23 11:07:10+00" "2013-08-23 11:07:10+00" "2013-08-23 11:07:10+00"
##> xpathSApply(rootNode,"//modtime",xmlValue)
##[1] "2005-10-05 19:07:19+00" "2013-08-23 11:06:15+00" "2013-08-23 11:06:15+00" "2013-08-23 11:06:10+00"
##[5] "2013-08-23 11:06:13+00" "2013-08-23 11:06:13+00" "2013-08-23 11:06:08+00" "2013-08-23 11:06:10+00"
##[9] "2009-10-24 00:18:04+00" "2012-05-22 17:43:56+00" "2013-08-23 11:06:09+00" "2013-08-22 23:19:28+00"
##> xpathSApply(rootNode,"//acctime",xmlValue)
##[1] "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00"
##[5] "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00"
##[9] "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00" "2013-08-23 11:07:09+00"
