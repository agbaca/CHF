#Read the file with headers
CHF<-read.csv("C:\\Users\\adamg_000\\OneDrive\\Public\\Doing Data Science\\CHF\\CHF.csv",header=TRUE)
head(CHF,5)
#get mean paid by medicare under the vector name meanpaid.medicare
meanpaid.medicare<-mean(CHF$AmtReim)
#get mean total accommodation
meanaccom<-mean(CHF$TotAccomChg)
#Get mean departmental charges
meandep<-mean(CHF$TotDeptChg)
#standard dev for amount paid by medicare
devpaid.medicare<-sd(CHF$AmtReim)
#SD for accommodation
devaccom<-sd(CHF$TotAccomChg)
#for dept charges
devdep<-sd(CHF$TotDeptChg)
#Use tapply to find mean medicare payments by  gender
tapply(CHF$AmtReim,CHF$Sex,mean)
#By accomodation charges
tapply(CHF$TotAccomChg,CHF$Sex,mean)
#By Department Charges
tapply(CHF$TotDeptChg,CHF$Sex,mean)
#Boxplot for Mdeicare payments by Gender
boxplot(CHF$AmtReim,CHF$Sex)
#For total Accommodation charges
boxplot(CHF$TotAccomChg,CHF$Sex)
#For dept charges
boxplot(CHF$TotDeptChg,CHF$Sex)
#hist for accomodation charges
hist(CHF$TotAccomChg)
#hist for gender
hist(CHF$Sex)
#hist for age
hist(CHF$Age)
#barplot of sex by admission source, need to clean up
barplot(CHF$admsrc,CHF$Sex)
#Find mortality rates when 
#DRG=292 and DRG=293
#discharge destination=20
mortrate<-CHF[c(10,11)]
#Total values for drg 292 = 144
mortratea<-mortrate[!(mortrate$drgcode!=292),]
str(mortratea)
#Total values for drg 293=81
mortrateb<-mortrate[!(mortrate$drgcode!=293),]
str(mortrateb)
mortrate2<-mortrate[!(mortrate$dischdest!=20),]
mortrate3<-mortrate2[!(mortrate2$drgcode<=291),]
#The data shows 3 expirations with a DRG code of 292
#The data shows 2 expirations with a DRG code of 293
#The entire dataset has 390 visits
mortrate292<-3/144
mortrate293<-2/81
#Plot the rate with the total observations by drg
#The following is the code to create a subsetted dataset with Patient# LOS and DRG Code
#Then a 1 sample ttest is run to see if LOS significantly different than 6 for drg 291
los291<-CHF[!(CHF$drgcode!=291),]
los291
str(los291)
los291b<-CHF[c(1,2,11)]
str(los291b)
los291b<-los291[c(1,2,11)]
str(los291b)
mean(los291b$LOS)
t.test(los291b$LOS,mu=6,conf.level=0.95)


