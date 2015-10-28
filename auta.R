auta <- read.csv("~/Scholla/___FEL/21rocnik/DVZ/1dcv/ukola2015auta.csv", header=TRUE);
auta <- read.csv("~/Schule/FEL/21rocnik/DVZ/AutaR2015/ukola2015auta.csv", header=TRUE)
auta2 <- auta[,]
auta2 <- auta[!is.na(auta$V1) &&!is.na(auta$V2) &&!is.na(auta$V3) !is.na(auta$V4) &&
!is.na(auta$V5) &&!is.na(auta$V6) &&!is.na(auta$V7) &&!is.na(auta$V8) &&!is.na(auta$V9),]

