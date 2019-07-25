library(rpart)
library(rattle)
library(data.table)

setwd('C:/mustafa/Seminer/EYS19/Data/Housing_Data/')
veri_yolu="housingdata.csv"
ev_veri=fread(veri_yolu)
sutun_isimler=fread('names.txt',header=F)
names(ev_veri)=sutun_isimler$V1

agac=rpart(MEDV~.,ev_veri)

fancyRpartPlot(agac)