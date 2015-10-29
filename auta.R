auta <- read.csv("~/Scholla/___FEL/21rocnik/DVZ/1dcv/ukola2015auta.csv", header=TRUE);
auta <- read.csv("~/Schule/FEL/21rocnik/DVZ/AutaR2015/ukola2015auta.csv", header=TRUE)


#---------------bod 1-------------------
length(auta$carname) # vraci pocet slozek seznamu
#bod 1 priznaky
dim(auta) # vypisuje dimenze takulky dat

#----bod 2 chybejici data (teoretickt take bod 1 a 3)
summary(auta) # vypis celkoveho prehledu, dle charakteru 

#----- bod 3 odlehla mereni (vizualizace take bod 4)
mpg<-boxplot(auta$mpg,ylab = 'Miles per Gallon [mpg]',horizontal = TRUE, main='' )
length(mpg$out)
cy<- boxplot(auta$cylinders,ylab = 'Cylindres [-]',horizontal = TRUE,main='' )
length(cy$out)
ho<- boxplot(auta$horsepower,ylab = 'Power [Horse power]',horizontal = TRUE,main='' )
length(ho$out)
we<- boxplot(auta$weight,ylab = 'Weight [lbs]',horizontal = TRUE,main='' )
length(we$out)
ac<- boxplot(auta$acceleration,ylab = 'Acceleration [-]',horizontal = TRUE,main='' )
length(ac$out)
mo<- boxplot(auta$modelyear,ylab = 'Model year [-]',horizontal = TRUE,main='' )
length(mo$out)
di<- boxplot(auta$displacement,ylab = 'Displacement [cubic inches]',horizontal = TRUE,main='' )
length(di$out)
ro<- boxplot(auta$origin,ylab = 'Origin [-]',horizontal = TRUE,main='' )
length(ro$out)

boxplot(auta,main='' )


#-----------------------bod 5 modelovali jsme-----------------
#pred odstranenim (vizualizace tak bod 4)
plot(auta$mpg, auta$weight,xlab = 'Miles per Gallon [mpg]', ylab = 'Vehicle weight [lbs]', col= 'blue')

auta2 <- auta[auta$mpg<45,]
auta2 <- auta2[auta2$mpg>5,]

#po odstraneni (vizualizace take bod 4)
plot(auta2$mpg, auta2$weight,xlab = 'Miles per Gallon [mpg]', ylab = 'Vehicle weight [lbs]', col= 'blue')

modelar <- lm(auta2$weight ~ auta2$mpg) 
coef(modelar)
abline(coef(modelar), col='red')
#------- bod 5 je statisticky vyznamna (podle vseho ne)
anova(modelar)






#----------- bod 6 jestli existuje zavislost na necem jinem
boxplot(auta2$mpg ~ auta2$modelyear,xlab = 'Model year [-]', ylab = 'Miles per Gallon [mpg]' )
#zavislost roku vyroby na spotrebe
plot(auta2$mpg ~ auta2$displacement,xlab = 'Displacement [cubic inches]', ylab = 'Miles per Gallon [mpg]', col='blue' )
#zavislost objemu na spotrebe

boxplot(auta$mpg ~ auta$cylinders,xlab = 'Cylinders[-]', ylab = 'Miles per Gallon [mpg]' )
#zavislost spotrebe na pocte valcu

auta2 <- auta[auta$mpg<45,]
auta2 <- auta2[auta2$mpg>5,]
auta2 <- auta2[auta2$horsepower<201,]
plot(auta2$mpg, auta2$horsepower,xlab = 'Miles per Gallon [mpg]', ylab = 'Power [Horse power]', col= 'blue')
#zavislost spotreby na vykonu
modelarHP <- lm(auta2$horsepower ~ auta2$mpg) 
coef(modelarHP)
abline(coef(modelarHP), col='red')
anova(modelarHP)


plot(auta$mpg, auta$acceleration,xlab = 'Miles per Gallon [mpg]', ylab = 'Acceleration [-]', col= 'blue')
#zavislost spotreby na zrychlenmi
modelar <- lm(auta$acceleration ~ auta$mpg) 
coef(modelar)
abline(coef(modelar), col='red')








#------------ bordel okolo to byli experimenty mozne taky k vyuziti

mod = lm(auta2$mpg ~ auta2$weight)
anova(mod)

plot(auta2$mpg, auta2$horsepower,xlab = 'Miles per Gallon [mpg]', ylab = 'Power [Horse power]', col= 'blue')
auta_horse <- auta2[auta2$horsepower < 300,]
plot(auta_horse$mpg, auta_horse$horsepower,xlab = 'Miles per Gallon [mpg]', ylab = 'Power [Horse power]', col= 'blue')

plot(auta2$mpg, auta2$acceleration,xlab = 'Miles per Gallon [mpg]', ylab = 'acceleration', col= 'red')
auta_accel <- auta2[auta2$acceleration < 40,]
auta_accel <- auta_accel[auta_accel$acceleration > 5,]
plot(auta_accel$mpg, auta_accel$acceleration,xlab = 'Miles per Gallon [mpg]', ylab = 'acceleration', col= 'blue')