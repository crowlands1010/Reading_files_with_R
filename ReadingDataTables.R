library(data.table)
DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)

##Testing & Output
##> DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
##> head(DT,3)
##x y          z
##1: -0.5300421 a -0.4084285
##2: -0.5861597 a  0.4487442
##3:  0.3510596 a -0.4602191
##> library(data.table)
##> DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
##> head(DT,3)
##x y          z
##1: 1.0087841 a -0.5495723
##2: 0.2420833 a  1.6828057
##3: 0.6198138 a  0.5196733
##> tables()
##NAME NROW NCOL MB  COLS KEY
##1:   DT    9    3  0 x,y,z    
##Total: 0MB
##> DT[2,]
##x y        z
##1: 0.2420833 a 1.682806
##> DT[c(2,3)]
##x y         z
##1: 0.2420833 a 1.6828057
##2: 0.6198138 a 0.5196733
##> k ={print(10);5}
##[1] 10
##> print(k)
##[1] 5
##> DT[,list(mean(x),sum(z))]
##V1       V2
##1: 0.08269911 3.341231
##> DT[,table(y)]
##y
##a b c 
##3 3 3 
##> DT[,w:=z^2]
##> DT2 <- DT
##> DT[,y:=2]
##Warning message:
##  In `[.data.table`(DT, , `:=`(y, 2)) :
##  Coerced double RHS to character to match the type of the target column (column 2 named 'y'). If the target column's type character is correct, it's best for efficiency to avoid the coercion and create the RHS as type character. To achieve that consider R's type postfix: typeof(0L) vs typeof(0), and typeof(NA) vs typeof(NA_integer_) vs typeof(NA_real_). You can wrap the RHS with as.character() to avoid this warning, but that will still perform the coercion. If the target column's type is not correct, it's best to revisit where the DT was created and fix the column type there; e.g., by using colClasses= in fread(). Otherwise, you can change the column type now by plonking a new column (of the desired type) over the top of it; e.g. DT[, `y`:=as.double(`y`)]. If the RHS of := has nrow(DT) elements then the assignment is called a column plonk and is the way to change a column's type. Column types can be observed with sapply(DT,typeof).
##> head(DT,n=3)
##x y          z         w
##1: 1.0087841 2 -0.5495723 0.3020298
##2: 0.2420833 2  1.6828057 2.8318351
##3: 0.6198138 2  0.5196733 0.2700603
##> head(DT2,n=3)
##x y          z         w
##1: 1.0087841 2 -0.5495723 0.3020298
##2: 0.2420833 2  1.6828057 2.8318351
##3: 0.6198138 2  0.5196733 0.2700603
##> DT[,m:= {tmp <- (x+z); log2(tmp+5)}]
##> DT[,a:=z>0]
##> head(DT,n=3)
##x y          z         w        m     a
##1: 1.0087841 2 -0.5495723 0.3020298 2.448693 FALSE
##2: 0.2420833 2  1.6828057 2.8318351 2.791791  TRUE
##3: 0.6198138 2  0.5196733 0.2700603 2.618118  TRUE
##> DT[,b:= mean(x+w),by=a]
##> head(DT,n=3)
##x y          z         w        m     a          b
##1: 1.0087841 2 -0.5495723 0.3020298 2.448693 FALSE 0.05406559
##2: 0.2420833 2  1.6828057 2.8318351 2.791791  TRUE 1.81002408
##3: 0.6198138 2  0.5196733 0.2700603 2.618118  TRUE 1.81002408
##> set.seed(123);
##> DT <- data.table(x=sample(letters[1:3],1E5,TRUE))
##> DT[, .N, by=x]
##x     N
##1: c 33294
##2: b 33305
##3: a 33401
##> DT <- data.table(x=rep(c("a","b","c"),each=100),y=rnorm(300))
##> setkey(DT,x)
##> DT['a']
##x           y
##1: a  0.88631257
##2: a  2.82858132
##3: a  2.03145429
##4: a  1.90675413
##5: a  0.21490826
##6: a -0.86273413
##7: a -2.20493863
##8: a  0.24105923
##9: a  1.83832419
##10: a  0.79205468
##11: a  0.65053469
##12: a -1.53912061
##13: a -0.60830053
##14: a  0.38195644
##15: a -1.07500044
##16: a  0.21994264
##17: a -0.78288781
##18: a -1.11003346
##19: a -1.65871456
##20: a -0.50147343
##21: a  1.91636375
##22: a  1.41236645
##23: a  0.92260986
##24: a  1.01106201
##25: a  0.57213026
##26: a -0.62843126
##27: a -0.36316140
##28: a -1.05858811
##29: a -0.42935803
##30: a  0.86941467
##31: a -0.54001647
##32: a -1.14647747
##33: a -0.17151840
##34: a -0.56368340
##35: a -0.42994346
##36: a -1.23723779
##37: a  0.15901329
##38: a -1.16711067
##39: a -0.08111944
##40: a -0.51667953
##41: a  0.99540703
##42: a  0.79752142
##43: a  0.53895224
##44: a -1.40405605
##45: a  0.40144065
##46: a -0.52432237
##47: a -0.83952146
##48: a  0.47556591
##49: a -0.01194696
##50: a  0.10319780
##51: a -0.38575415
##52: a  1.11726438
##53: a -0.49961390
##54: a -0.44735091
##55: a -0.23784512
##56: a -0.86939374
##57: a  1.14887678
##58: a  0.53864996
##59: a -0.10680992
##60: a  0.60053649
##61: a -1.47499445
##62: a  0.98126964
##63: a -0.61118738
##64: a  0.08938648
##65: a -0.01327227
##66: a -0.97219341
##67: a -0.57946225
##68: a  0.14963144
##69: a  0.47640689
##70: a  0.44729682
##71: a -0.19180956
##72: a  0.51712710
##73: a  0.40338273
##74: a  1.78411385
##75: a  0.27775645
##76: a  0.77394978
##77: a -2.08081928
##78: a -0.35920889
##79: a -0.45932217
##80: a  0.20181947
##81: a  0.62401138
##82: a -0.25722981
##83: a  0.94414021
##84: a  0.25074808
##85: a -0.72784257
##86: a  0.36881323
##87: a  0.44415068
##88: a -1.00535422
##89: a -0.33152471
##90: a -0.37039325
##91: a -0.79701529
##92: a  0.28148559
##93: a  0.33307250
##94: a  0.52690325
##95: a -0.78168949
##96: a -0.02793948
##97: a -1.74492339
##98: a  0.65284209
##99: a -0.93830821
##100: a  0.62753159
##x           y
##> big_df <- data.frame(x=rnorm(1E6),y=rnorm(1E6))
##> file <- tempfile()
##> write.table(big_df,file=file,row.names=FALSE,col.names=TRUE,sep="\t",quote=FALSE)
##> system.time(fread(file))
##user  system elapsed 
##0.08    0.03    0.22 
##> 
##  > 
##  > system.time(read.table(file,header=TRUE,sep="\t"))
##user  system elapsed 
##3.98    0.14    4.12 