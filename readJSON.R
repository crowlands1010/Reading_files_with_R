##reading JSON file from web
library(jsonlite)
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)

##names(jsonData$Owner)
##jsonData$owner$login

##Writing data frames to JSON (IRIS dataset -- FALSE is not formatteds, it sucks to read.)
myjson <- toJSON(iris,pretty=TRUE)
cat(myjson)

##convert back to JSON
iris2 <- fromJSON(myjson)
head(iris2)