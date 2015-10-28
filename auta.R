auta <- read.csv("~/Scholla/___FEL/21rocnik/DVZ/1dcv/ukola2015auta.csv", header=TRUE);
auta <- read.csv("~/Schule/FEL/21rocnik/DVZ/AutaR2015/ukola2015auta.csv", header=TRUE)

length(auta$carname) # vraci pocet slozek seznamu
dim(auta) # vypisuje dimenze takulky dat
summary(auta) # vypis celkoveho prehledu, dle charakteru 
plot(auta$mpg, auta$weight,xlab = 'mpg', ylab = 'weight', col= 'blue')

auta2 <- auta[auta$mpg<55,]
auta2 <- auta2[auta2$mpg>5,]


plot(auta2$mpg, auta2$weight,xlab = 'mpg', ylab = 'weight', col= 'blue')


length(auta$carname) # vraci pocet slozek seznamu
dim(auta) # vypisuje dimenze takulky dat
summary(auta) # vypis celkoveho prehledu, dle charakteru 

m <- lm(auta2$weight ~ auta2$mpg) 
coef(m)
abline(coef(m), col='red')

plot(auta2$mpg, auta2$horsepower,xlab = 'mpg', ylab = 'horsepower', col= 'blue')
auta_horse <- auta2[auta2$horsepower < 300,]
plot(auta_horse$mpg, auta_horse$horsepower,xlab = 'mpg', ylab = 'horsepower', col= 'blue')

plot(auta2$mpg, auta2$acceleration,xlab = 'mpg', ylab = 'acceleration', col= 'red')
auta_accel <- auta2[auta2$acceleration < 40,]
auta_accel <- auta_accel[auta_accel$acceleration > 5,]
plot(auta_accel$mpg, auta_accel$acceleration,xlab = 'mpg', ylab = 'acceleration', col= 'blue')