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
