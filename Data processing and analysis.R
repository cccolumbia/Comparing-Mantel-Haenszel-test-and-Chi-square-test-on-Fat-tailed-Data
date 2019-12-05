
# data2017 merges  Life Expectancy2017.csv and Immunization2017.csv
data <- subset(data2017,select=c(NamePublicationEnglish,WHOregionCode,Life.Expectancy))
data <- unique(data)
median.life <- median(data$Life.Expectancy)
median.life

data <- subset(data2017,select=c(NamePublicationEnglish,VaccineCode,PerCentCoverage))
data <- unique(data)

data2017$VaccineLevel <- NA
for (i in vaccine){
  median <- median(data$PerCentCoverage[data$VaccineCode==i])
  data2017$VaccineLevel[data2017$VaccineCode==i] <-    ifelse(data2017$PerCentCoverage[data2017$VaccineCode==i]>=median,"H","L")
}
data2017$Life.Expectancy.Level <- ifelse(data2017$Life.Expectancy>=median.life,"H","L")

N <- 6
region <- unique(data2017$WHOregionCode)
MH.list <- list()
col.names <- c("Life.expectancy.H","Life.expectancy.L")
row.names <- c("Vaccine.H","Vaccin.L")
mat.names <- region
for (i in vaccine){
  subdata <- data2017[data2017$VaccineCode==i,]
  table <- c()
  for (j in region){
    regiondata <- subdata[subdata$WHOregionCode==j,]
    table <- c(table,with(regiondata,table(VaccineLevel,Life.Expectancy.Level)))
  }
  array <- array(table,dim=c(2,2,N),dimnames = list(row.names,col.names,mat.names))
  print(array)
  MH.list <- append(MH.list,list(array))
}
names(MH.list) <- vaccine

MH.test <- list()
for (i in vaccine){
  MH.test <- append(MH.test,list(mantelhaen.test(array(MH.list[i])[[1]])))
}
names(MH.test) <- vaccine
MH.test

Chiq.test <- list()
for (i in vaccine){
  Chiq.test <- append(Chiq.test,list(chisq.test(rowSums(array(MH.list[i])[[1]],dims=2))))
}
names(Chiq.test) <- vaccine
Chiq.test