setwd("C:/Users/Arora's Den/Documents/MS - Business Analytics/Competitions/Crop Challenge Data/Training Data")
rm(list=ls(all=TRUE))

performance <- read.csv("Training_Performance_Dataset.csv")
soil <- read.csv("Training_Soil_Dataset.csv")
weather <- read.csv('Training_Weather_Dataset.csv')
genetics <- read.csv("Training_Genetic_Dataset.csv")

# Trying to draw some sensical information from genetics data
## Genetics data
# head(genetics[1:6,1:6])
# genetics1 <- genetics[,2:1000]
# genetics2 <- genetics[,1001:2000]
# genetics3 <- genetics[,2001:3000]
# genetics4 <- genetics[,3001:4000]
# genetics5 <- genetics[,4001:5000]
# genetics6 <- genetics[,5001:6000]
# genetics7 <- genetics[,6001:7000]
# genetics8 <- genetics[,7001:8000]
# genetics9 <- genetics[,8001:9000]
# genetics10 <- genetics[,9001:10000]
# genetics11 <- genetics[,10001:11000]
# genetics12 <- genetics[,11001:12000]
# genetics13 <- genetics[,12001:13000]
# genetics14 <- genetics[,13001:14000]
# genetics15 <- genetics[,14001:15000]
# genetics16 <- genetics[,15001:16000]
# genetics17 <- genetics[,16001:17000]
# genetics18 <- genetics[,17001:18000]
# genetics19 <- genetics[,18001:19000]
# genetics20 <- genetics[,19001:19466]

dim(genetics)
# [1]  2267 19466

#Evaluating genes data
n <- nrow(genetics)

# This seems to me the fastest way
# 
# for(i in 1:n)
# {genetics1$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
# genetics1$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
# genetics1$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
# sum <- genetics1$AA1[i]+genetics1$AC1[i]+genetics1$CC1[i]
# genetics1$AA1[i]  <- genetics1$AA1[i]/sum
# genetics1$AC1[i]  <- genetics1$AC1[i]/sum
# genetics1$CC1[i]  <- genetics1$CC1[i]/sum}
# 
# write.csv(genetics1, file = "genetics1.csv")

# Creating sub-set of genetics file for running PCA

head(genetics1[1:5,999:1002])

genetics_sub <- genetics[,c(1,19470)]
write.csv(genetics_sub, file = "genetics_sub.csv")

genetics_sub <- read.csv("genetics_sub.csv")

summary(performance)

# Hybrid            Year      Maturity_Group   Location_ID      Latitude       Longitude           Yield         Check_Yield    
# P1304:P2030:   830   Min.   :2008   Min.   :0.000   Min.   :   1   Min.   :26.15   Min.   :-121.54   Min.   : 20.07   Min.   : 30.12  
# P1212:P2030:   683   1st Qu.:2012   1st Qu.:4.000   1st Qu.: 860   1st Qu.:40.08   1st Qu.: -98.22   1st Qu.:101.61   1st Qu.:114.73  
# P1311:P2144:   599   Median :2013   Median :6.000   Median :1321   Median :41.11   Median : -94.14   Median :120.01   Median :130.55  
# P1157:P1320:   577   Mean   :2013   Mean   :5.409   Mean   :1270   Mean   :41.23   Mean   : -93.29   Mean   :116.51   Mean   :128.28  
# P1168:P1295:   502   3rd Qu.:2014   3rd Qu.:7.000   3rd Qu.:1739   3rd Qu.:43.16   3rd Qu.: -88.84   3rd Qu.:134.78   3rd Qu.:144.76  
# P1142:P1240:   493   Max.   :2016   Max.   :8.000   Max.   :2249   Max.   :49.50   Max.   : -71.82   Max.   :278.32   Max.   :210.46  
# (Other)    :144768                                                                                                                    
# Yield_Difference  
# Min.   :-128.237  
# 1st Qu.: -19.491  
# Median : -10.514  
# Mean   : -11.765  
# 3rd Qu.:  -2.529  
# Max.   : 107.329 

summary(soil)
# Location_ID        Latitude       Longitude             s1              s2              s3              s4              s5       
# Min.   :   1.0   Min.   :26.15   Min.   :-121.54   Min.   : 6.80   Min.   : 9.30   Min.   : 0.00   Min.   :11.00   Min.   :4.700  
# 1st Qu.: 564.5   1st Qu.:39.91   1st Qu.: -96.58   1st Qu.:20.20   1st Qu.:38.00   1st Qu.:21.20   1st Qu.:21.95   1st Qu.:6.100  
# Median :1126.0   Median :41.55   Median : -91.62   Median :23.50   Median :45.00   Median :30.00   Median :23.45   Median :6.300  
# Mean   :1125.9   Mean   :41.31   Mean   : -90.80   Mean   :23.46   Mean   :46.32   Mean   :30.23   Mean   :23.09   Mean   :6.398  
# 3rd Qu.:1687.5   3rd Qu.:43.53   3rd Qu.: -86.10   3rd Qu.:26.50   3rd Qu.:54.80   3rd Qu.:38.20   3rd Qu.:24.75   3rd Qu.:6.700  
# Max.   :2249.0   Max.   :49.50   Max.   : -71.49   Max.   :39.80   Max.   :74.20   Max.   :83.30   Max.   :29.40   Max.   :7.900  
# s6               s7             s8        
# Min.   : 1.500   Min.   : 7.2   Min.   : 0.500  
# 1st Qu.: 3.800   1st Qu.:21.8   1st Qu.: 1.400  
# Median : 5.000   Median :24.7   Median : 2.200  
# Mean   : 5.612   Mean   :24.2   Mean   : 2.757  
# 3rd Qu.: 6.800   3rd Qu.:27.2   3rd Qu.: 3.500  
# Max.   :28.000   Max.   :43.2   Max.   :14.700

# install.packages("corrgram")
# install.packages("corrplot")
library(corrplot)

# Computing correlation Matrix
X <- cor(soil)
head(round(X,3))

# Taking required columns
X1 <- X[4:11,4:11]


# Visualizing correlation matrix
corrplot(X1,method="circle",type = "upper")
corrplot(X1,method="pie",type = "upper")
corrplot(X1,method="number",type = "upper")

# Analyzing historical performance
library(data.table)
library(sandwich) 
library(lmtest) # If lmtest isn't working use the following:
# coeftest <- function(x,vcov.=vcov) {
#   estim <- coef(x)
#   sterr <- diag(vcov.(x))
#   tstat <- estim/sqrt(sterr)
#   pval  <- dnorm(-abs(tstat))*2
#   return(cbind(estim,sterr,tstat,pval))
# }

weather1 <- weather[,4:76]
head(weather, 2) #this returns the number of rows indicated in a data frame format
df <- data.frame(head(weather, 2))
df

summary(weather)
head(weather)
colnames(weather)

# Converting matrix into a data frame
install.packages("reshape2")
require(reshape2)
weather2 = melt(weather,id.vars = c("Location_ID","Latitude","Longitude","Year"))
colnames(weather2)[5] <- "weather"

# Splitting column in characteristics
install.packages("splitstackshape")
library(splitstackshape)
weather3 <- cSplit(weather2,"weather",sep = "_", type.convert = FALSE)
colnames(weather3)[8] <- "month"
colnames(weather3)[7] <- "characterics"
weather3 <- weather3[,-6]

# Getting weather variable in the right format
install.packages("reshape")
library(reshape)
weather3 = melt(weather3,id.vars = c("Location_ID","Latitude","Longitude","Year","month"))
weather3 <- cast(weather3, Location_ID + Latitude + Longitude + Year + month ~ characterics, mean, value = 'value')
colnames(weather3)[6] <- "w1"
colnames(weather3)[7] <- "w2"
colnames(weather3)[8] <- "w3"
colnames(weather3)[9] <- "w4"
colnames(weather3)[10] <- "w5"
colnames(weather3)[11] <- "w6"

# Getting required data.frame = Combining Soil and weather data together
colnames(weather3)
colnames(soil)
mix=merge(weather3,soil,by.x = "Location_ID",by.y = "Location_ID",all.x = FALSE)
mix <- mix[,-12]
mix <- mix[,-12]
head(mix)


dim(mix)
# [1] 431424     19

#Subsetting the data
sample <- mix[,6:19]

#Scaling the values

list <- names(sample)
scaled_data <- data.frame(rownum <- 1:431424)
for(i in 1:length(list))
{
  y<-(sample[,i]-mean(sample[,i]))/(sd(sample[,i]))
  scaled_data<-cbind(scaled_data,y)
  names(scaled_data)[i+1]<-paste("scaled_",list[i])
  print(list[i])
}

colnames(scaled_data)  


#Deleting redundant column    
scaled_data <- scaled_data[,-1]

#Fix the seeds
set.seed(200)

# Combining scaled data and sample data

sample<-cbind(sample,scaled_data)
names(sample)
# [1] "w1"         "w2"         "w3"         "w4"         "w5"         "w6"         "s1"         "s2"         "s3"        
# [10] "s4"         "s5"         "s6"         "s7"         "s8"         "scaled_ w1" "scaled_ w2" "scaled_ w3" "scaled_ w4"
# [19] "scaled_ w5" "scaled_ w6" "scaled_ s1" "scaled_ s2" "scaled_ s3" "scaled_ s4" "scaled_ s5" "scaled_ s6" "scaled_ s7"
# [28] "scaled_ s8"

fit.km <- kmeans(sample[,15:28],10)
fit.km$withinss
# [1] 193524.0 243839.5 200889.5 304294.7 321185.8 315270.8 203738.0 327463.5 258758.9 225989.8
fit.km$betweenss
# [1] 3444968
colnames(sample)

# Determining optimal number of clusters
wss <- 1:15
number <- 1:15

for (i in 1:15)
{
  wss[i]<-kmeans(sample[,15:28],i)$tot.withinss
}


# ggplot2

library(ggplot2)
data<-data.frame(wss,number)
p<-ggplot(data,aes(x=number,y=wss),color="red")
p+geom_point()+scale_x_continuous(breaks=seq(1,20,1))

# Build 6 cluster model

set.seed(100)
fit.km<-kmeans(sample[,1:14],6) # We can define number of clusters here
colnames(sample)

# Merging the cluster output with original data

sample$cluster<-fit.km$cluster
max(sample$cluster)
colnames(sample)
head(sample)

# Profiling of the new clusters formed

#Cluster wise Aggregates
cmeans<-aggregate(sample[,1:14],by=list(sample$cluster),FUN=mean)
cmeans
# 
# Group.1           w1          w2          w3          w4          w5          w6       s1       s2       s3       s4       s5
# 1       1 -0.007925280  0.16298170  0.09245871  0.29593218  0.25333185  0.31050319 25.59073 62.95489 11.40802 25.29048 6.147368
# 2       2 -0.011577298 -0.08800258  0.47209741  0.14118982  0.52076831  0.23985850 16.21028 27.32613 56.44867 17.68488 6.177707
# 3       3  0.009261241 -0.14961041 -0.15372543 -0.31146651 -0.26063970 -0.30276100 21.31586 35.94216 42.72239 21.30222 6.592291
# 4       4 -0.004991953  0.15430177  0.03891555  0.18738659  0.12631784  0.17569205 23.69917 53.46341 22.84165 23.94312 6.266231
# 5       5  0.003558611 -0.17271198 -0.02761095 -0.01712596 -0.07127612 -0.05470634 28.88499 41.16710 29.99257 24.53292 6.730543
# 6       6  0.004897514  0.02630463 -0.13547947 -0.21904847 -0.25939860 -0.23179612 20.84736 45.31365 33.86012 22.53549 6.348621
#
# s6       s7        s8
# 1 4.340351 25.32431 0.9340852
# 2 4.742979 17.73951 6.2552031
# 3 6.673771 23.13202 4.5345933
# 4 5.054044 23.99882 1.6563727
# 5 5.861351 27.63180 2.4464865
# 6 6.496904 23.64706 2.8442495
# 
dim(cmeans)
## Visualise the clusters

#Plotting groups across two dimensions
install.packages("ggplot2")
library(ggplot2)
mix<-cbind(mix,sample)
colnames(mix)
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
mix <- mix[,-21]
colnames(mix)

write.csv(mix,"mix.csv")
mix <- read.csv("mix.csv")

#For 6 clusters
#Year vs Weather
p<-ggplot(mix,aes(x=Year,y=w1))
p+geom_point(aes(colour=as.factor(cluster)))

#Latitude vs Weather
p<-ggplot(mix,aes(x=Latitude.x,y=value))
p+geom_point(aes(colour=as.factor(cluster)))

par(mfrow = c(2,4))

#Longitude vs Weather
p<-ggplot(mix,aes(x=Longitude.x,y=value))
p+geom_point(aes(colour=as.factor(cluster)))

#Longitude vs Latitude
p<-ggplot(mix,aes(x=Longitude.x,y=Longitude.x))
p+geom_point(aes(colour=as.factor(cluster)))


# location vs Soil ingredients
p<-ggplot(mix1,aes(x=Location_ID,y=s1))
p+geom_point(aes(colour=as.factor(cluster)))


p<-ggplot(mix,aes(x=Location_ID,y=s2))
p+geom_point(aes(colour=as.factor(cluster)))


p<-ggplot(mix,aes(x=Location_ID,y=s3))
p+geom_point(aes(colour=as.factor(cluster)))


p<-ggplot(mix,aes(x=Location_ID,y=s4))
p+geom_point(aes(colour=as.factor(cluster)))


p<-ggplot(mix,aes(x=Location_ID,y=s5))
p+geom_point(aes(colour=as.factor(cluster)))


p<-ggplot(mix,aes(x=Location_ID,y=s6))
p+geom_point(aes(colour=as.factor(cluster)))


p<-ggplot(mix,aes(x=Location_ID,y=s7))
p+geom_point(aes(colour=as.factor(cluster)))


p<-ggplot(mix,aes(x=Location_ID,y=s8))
p+geom_point(aes(colour=as.factor(cluster)))

# combining performance, soil, weather data
colnames(performance)
colnames(mix_set)
# mix <- read.csv("mix.csv")
max(mix$cluster)
colnames(mix)

# mix_set <- mix[,c(1:15,25)]
mix_set <- mix[,3:22]
mix_set2=merge(performance,mix_set,by.x = c("Year","Location_ID"),by.y = c("Year","Location_ID"),all.x = FALSE, all.y = FALSE)
colnames(mix_set2)

# Removing weather variable (For further analysis)
mix_set3 <- mix_set2[,c(1:9,12:27)]
mix_set3 <- mix_set3[!duplicated(mix_set3),]


# Combining with the gene values
colnames(gene)
colnames(mix_set3)
master=merge(mix_set3,gene,by.x = "Hybrid",by.y = "Hybrid",all.x = FALSE)
write.csv(master,"master.csv")
# rm(list=ls(all=TRUE))

# Making clusters based on the kmeans method
master <- read.csv("master.csv")
states <- read.csv("Soil_PCI.CSV")
master1=merge(master,states,by.x = "Location_ID",by.y = "Location_ID",all.x = FALSE)
colnames(master1)
master1 <- master1[,c(1,3:86,97:100)]
write.csv(master1,"master1.csv")
################################################################################################################
# Getting zip codes, state names and city from the latitude and longitude with socio-economic paramters
#################################################################################################################
install.packages("RCurl")
install.packages("xlsx")
install.packages("rJava")

require(RCurl)
require(xlsx)
require(rJava)

# NOTE if you can't download the file automatically, download it manually at:
# 'http://www.psc.isr.umich.edu/dis/census/Features/tract2zip/'
urlfile <-'http://www.psc.isr.umich.edu/dis/census/Features/tract2zip/MedianZIP-3.xlsx'
destfile <- "census20062010.xlsx"
download.file(urlfile, destfile, mode="wb")
census <- read.csv("census20062010.csv")

# clean up data
census <- census[c('Zip','Median','Pop')]
names(census) <- c('Zip','Median','Population')
census$Median <- as.character(census$Median)
census$Median <- as.numeric(gsub(',','',census$Median))
census$Population <- as.character(census$Population)
census$Population <- as.numeric(gsub(',','',census$Population))
print(head(census,5))

# get geographical coordinates from zipcode
install.packages("zipcode")
require(zipcode)
data(zipcode)
census$Zip <- clean.zipcodes(census$Zip)
census <- merge(census, zipcode, by.x='Zip', by.y='zip')

head(census)
write.csv(census, file = "census.csv")

# get a Google map
require(ggmap)
map<-get_map(location='united states', zoom=4, maptype = "terrain",
             source='google',color='color')

# plot it with ggplot2 -- Salary (Median)
require("ggplot2")
ggmap(map) + geom_point(
  aes(x=longitude, y=latitude, show_guide = TRUE, colour=Median), 
  data=census, alpha=.8, na.rm = T)  + 
  scale_color_gradient(low="beige", high="blue")

# plot it with ggplot2 -- Population
require("ggplot2")
ggmap(map) + geom_point(
  aes(x=longitude, y=latitude, show_guide = TRUE, colour=Population), 
  data=census, alpha=.8, na.rm = T)  + 
  scale_color_gradient(low="beige", high="red")

head(soil)
soil1 <- soil[,2:3]
#################################################################################################################
install.packages("RJSONIO")
reverseGeoCode <- function(latlng) {
latlngStr <- gsub(' ','%20', paste(latlng, collapse=","))         #Collapse and Encode URL Parameters
    library("RJSONIO")                                            #Load Library
    #Open Connection
    connectStr <- paste('http://maps.google.com/maps/api/geocode/json?sensor=false&latlng=',latlngStr, sep="")
    con <- url(connectStr)
    data.json <- fromJSON(paste(readLines(con), collapse=""))
    close(con)
    
    #Flatten the received JSON
    data.json <- unlist(data.json)
    if(data.json["status"]=="OK")
      address <- data.json["results.formatted_address"]
    return (address)
  }
rownum <- nrow(soil)
for(i in 1:rownum) (soil$address[i] <- reverseGeoCode(c(soil$Latitude[i],soil$Longitude[i])))
write.csv(soil, file = "soil_address.csv")

?reverseGeoCode

address
results.formatted_address
"668 Coleridge Ave, Palo Alto, CA 94301, USA"

#################################################################################################################

cluster1 <- subset(master1, cluster == 1)
cluster11 <- cluster1[,c(4,7,11:85,89)]

colnames(cluster1)

#Prediction Model for different clusters
model1 <- lm(Yield ~ ., data = cluster11)
summary(model1)

step(model1)
install.packages("Rcmdr")
installed.packages("stats")

library(Rcmdr)
library(stats)
stepwise(model1,"backward","BIC")

cluster2 <- subset(master1, cluster == 2)
cluster3 <- subset(master1, cluster == 3)
cluster4 <- subset(master1, cluster == 4)
cluster5 <- subset(master1, cluster == 5)
cluster6 <- subset(master1, cluster == 6)

model2 <- lm(Yield ~ Maturity_Group + gval +s1+s2+s3+s4+s5+s6+s7+s8, data = cluster2)
summary(model2)

model3 <- lm(Yield ~ Maturity_Group + gval +s1+s2+s3+s4+s5+s6+s7+s8, data = cluster3)
summary(model3)

model4 <- lm(Yield ~ Maturity_Group + gval +s1+s2+s3+s4+s5+s6+s7+s8, data = cluster4)
summary(model4)

model5 <- lm(Yield ~ Maturity_Group + gval +s1+s2+s3+s4+s5+s6+s7+s8, data = cluster5)
summary(model5)

model6 <- lm(Yield ~ Maturity_Group + gval +s1+s2+s3+s4+s5+s6+s7+s8, data = cluster6)
summary(model6)

