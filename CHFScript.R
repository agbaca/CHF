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


