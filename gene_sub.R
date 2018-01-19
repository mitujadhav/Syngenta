genetics <- read.csv("Training_Genetic_Dataset.csv")

# Trying to draw some sensical information from genetics data
## Genetics data
head(genetics[1:6,1:6])
genetics1 <-  genetics[,2:1000]
genetics2 <-  genetics[,1001:2000]
genetics3 <-  genetics[,2001:3000]
genetics4 <-  genetics[,3001:4000]
genetics5 <-  genetics[,4001:5000]
genetics6 <-  genetics[,5001:6000]
genetics7 <-  genetics[,6001:7000]
genetics8 <-  genetics[,7001:8000]
genetics9 <-  genetics[,8001:9000]
genetics12 <- genetics[,9001:10000]
genetics11 <- genetics[,10001:11000]
genetics12 <- genetics[,11001:12000]
genetics13 <- genetics[,12001:13000]
genetics14 <- genetics[,13001:14000]
genetics15 <- genetics[,14001:15000]
genetics16 <- genetics[,15001:16000]
genetics17 <- genetics[,16001:17000]
genetics18 <- genetics[,17001:18000]
genetics19 <- genetics[,18001:19000]
genetics20 <- genetics[,19001:19466]

dim(genetics)
# [1]  2267 19466

#Evaluating genes data
n <- nrow(genetics)

# This seems to me the fastest way

for(i in 1:n)
{genetics1$AA1[i] <- sum(genetics1[i,] ==  1, na.rm = TRUE)
genetics1$AC1[i]  <- sum(genetics1[i,] ==  0, na.rm = TRUE)
genetics1$CC1[i]  <- sum(genetics1[i,] == -1, na.rm = TRUE)
sum <- genetics1$AA1[i]+genetics1$AC1[i]+genetics1$CC1[i]
genetics1$AA1[i]  <- genetics1$AA1[i]/sum
genetics1$AC1[i]  <- genetics1$AC1[i]/sum
genetics1$CC1[i]  <- genetics1$CC1[i]/sum}

write.csv(genetics1, file = "genetics1.csv")
###########
for(i in 1:n)
{genetics2$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics2$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics2$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics2$AA1[i]+genetics2$AC1[i]+genetics2$CC1[i]
genetics2$AA1[i]  <- genetics2$AA1[i]/sum
genetics2$AC1[i]  <- genetics2$AC1[i]/sum
genetics2$CC1[i]  <- genetics2$CC1[i]/sum}

write.csv(genetics2, file = "genetics2.csv")
#########
for(i in 1:n)
{genetics3$AA1[i] <- sum(genetics3[i,] ==  1, na.rm = TRUE)
genetics3$AC1[i]  <- sum(genetics3[i,] ==  0, na.rm = TRUE)
genetics3$CC1[i]  <- sum(genetics3[i,] == -1, na.rm = TRUE)
sum <- genetics3$AA1[i]+genetics3$AC1[i]+genetics3$CC1[i]
genetics3$AA1[i]  <- genetics3$AA1[i]/sum
genetics3$AC1[i]  <- genetics3$AC1[i]/sum
genetics3$CC1[i]  <- genetics3$CC1[i]/sum}

write.csv(genetics1, file = "genetics1.csv")
#######
for(i in 1:n)
{genetics4$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics4$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics4$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics4$AA1[i]+genetics4$AC1[i]+genetics4$CC1[i]
genetics4$AA1[i]  <- genetics4$AA1[i]/sum
genetics4$AC1[i]  <- genetics4$AC1[i]/sum
genetics4$CC1[i]  <- genetics4$CC1[i]/sum}

write.csv(genetics4, file = "genetics4.csv")
########
for(i in 1:n)
{genetics5$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics5$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics5$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics5$AA1[i]+genetics5$AC1[i]+genetics5$CC1[i]
genetics5$AA1[i]  <- genetics5$AA1[i]/sum
genetics5$AC1[i]  <- genetics5$AC1[i]/sum
genetics5$CC1[i]  <- genetics5$CC1[i]/sum}

write.csv(genetics5, file = "genetics5.csv")
###########
for(i in 1:n)
{genetics6$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics6$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics6$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics6$AA1[i]+genetics6$AC1[i]+genetics6$CC1[i]
genetics6$AA1[i]  <- genetics6$AA1[i]/sum
genetics6$AC1[i]  <- genetics6$AC1[i]/sum
genetics6$CC1[i]  <- genetics6$CC1[i]/sum}

write.csv(genetics6, file = "genetics6.csv")
##########
for(i in 1:n)
{genetics7$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics7$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics7$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics7$AA1[i]+genetics7$AC1[i]+genetics7$CC1[i]
genetics7$AA1[i]  <- genetics7$AA1[i]/sum
genetics7$AC1[i]  <- genetics7$AC1[i]/sum
genetics7$CC1[i]  <- genetics7$CC1[i]/sum}

write.csv(genetics7, file = "genetics7.csv")
###############
for(i in 1:n)
{genetics8$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics8$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics8$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics8$AA1[i]+genetics8$AC1[i]+genetics8$CC1[i]
genetics8$AA1[i]  <- genetics8$AA1[i]/sum
genetics8$AC1[i]  <- genetics8$AC1[i]/sum
genetics8$CC1[i]  <- genetics8$CC1[i]/sum}

write.csv(genetics8, file = "genetics8.csv")
#############
for(i in 1:n)
{genetics9$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics9$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics9$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics9$AA1[i]+genetics9$AC1[i]+genetics9$CC1[i]
genetics9$AA1[i]  <- genetics9$AA1[i]/sum
genetics9$AC1[i]  <- genetics9$AC1[i]/sum
genetics9$CC1[i]  <- genetics9$CC1[i]/sum}

write.csv(genetics9, file = "genetics9.csv")
############
for(i in 1:n)
{genetics10$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics10$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics10$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics10$AA1[i]+genetics10$AC1[i]+genetics10$CC1[i]
genetics10$AA1[i]  <- genetics10$AA1[i]/sum
genetics10$AC1[i]  <- genetics10$AC1[i]/sum
genetics10$CC1[i]  <- genetics10$CC1[i]/sum}

write.csv(genetics10, file = "genetics10.csv")
######
for(i in 1:n)
{genetics11$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics11$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics11$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics11$AA1[i]+genetics11$AC1[i]+genetics11$CC1[i]
genetics11$AA1[i]  <- genetics11$AA1[i]/sum
genetics11$AC1[i]  <- genetics11$AC1[i]/sum
genetics11$CC1[i]  <- genetics11$CC1[i]/sum}

write.csv(genetics11, file = "genetics11.csv")
######
for(i in 1:n)
{genetics12$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics12$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics12$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics12$AA1[i]+genetics12$AC1[i]+genetics12$CC1[i]
genetics12$AA1[i]  <- genetics12$AA1[i]/sum
genetics12$AC1[i]  <- genetics12$AC1[i]/sum
genetics12$CC1[i]  <- genetics12$CC1[i]/sum}

write.csv(genetics12, file = "genetics12.csv")
######
for(i in 1:n)
{genetics13$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics13$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics13$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics13$AA1[i]+genetics13$AC1[i]+genetics13$CC1[i]
genetics13$AA1[i]  <- genetics13$AA1[i]/sum
genetics13$AC1[i]  <- genetics13$AC1[i]/sum
genetics13$CC1[i]  <- genetics13$CC1[i]/sum}

write.csv(genetics13, file = "genetics13.csv")
######
for(i in 1:n)
{genetics14$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics14$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics14$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics14$AA1[i]+genetics14$AC1[i]+genetics14$CC1[i]
genetics14$AA1[i]  <- genetics14$AA1[i]/sum
genetics14$AC1[i]  <- genetics14$AC1[i]/sum
genetics14$CC1[i]  <- genetics14$CC1[i]/sum}

write.csv(genetics14, file = "genetics14.csv")
######
for(i in 1:n)
{genetics15$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics15$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics15$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics15$AA1[i]+genetics15$AC1[i]+genetics15$CC1[i]
genetics15$AA1[i]  <- genetics15$AA1[i]/sum
genetics15$AC1[i]  <- genetics15$AC1[i]/sum
genetics15$CC1[i]  <- genetics15$CC1[i]/sum}

write.csv(genetics15, file = "genetics15.csv")
######
for(i in 1:n)
{genetics16$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics16$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics16$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics16$AA1[i]+genetics16$AC1[i]+genetics16$CC1[i]
genetics16$AA1[i]  <- genetics16$AA1[i]/sum
genetics16$AC1[i]  <- genetics16$AC1[i]/sum
genetics16$CC1[i]  <- genetics16$CC1[i]/sum}

write.csv(genetics16, file = "genetics16.csv")
######
for(i in 1:n)
{genetics17$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics17$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics17$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics17$AA1[i]+genetics17$AC1[i]+genetics17$CC1[i]
genetics17$AA1[i]  <- genetics17$AA1[i]/sum
genetics17$AC1[i]  <- genetics17$AC1[i]/sum
genetics17$CC1[i]  <- genetics17$CC1[i]/sum}

write.csv(genetics17, file = "genetics17.csv")
######
for(i in 1:n)
{genetics18$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics18$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics18$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics18$AA1[i]+genetics18$AC1[i]+genetics18$CC1[i]
genetics18$AA1[i]  <- genetics18$AA1[i]/sum
genetics18$AC1[i]  <- genetics18$AC1[i]/sum
genetics18$CC1[i]  <- genetics18$CC1[i]/sum}

write.csv(genetics18, file = "genetics18.csv")
######
for(i in 1:n)
{genetics19$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics19$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics19$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics19$AA1[i]+genetics19$AC1[i]+genetics19$CC1[i]
genetics19$AA1[i]  <- genetics19$AA1[i]/sum
genetics19$AC1[i]  <- genetics19$AC1[i]/sum
genetics19$CC1[i]  <- genetics19$CC1[i]/sum}

write.csv(genetics19, file = "genetics19.csv")
######
for(i in 1:n)
{genetics20$AA1[i] <- sum(genetics2[i,] ==  1, na.rm = TRUE)
genetics20$AC1[i]  <- sum(genetics2[i,] ==  0, na.rm = TRUE)
genetics20$CC1[i]  <- sum(genetics2[i,] == -1, na.rm = TRUE)
sum <- genetics20$AA1[i]+genetics20$AC1[i]+genetics20$CC1[i]
genetics20$AA1[i]  <- genetics20$AA1[i]/sum
genetics20$AC1[i]  <- genetics20$AC1[i]/sum
genetics20$CC1[i]  <- genetics20$CC1[i]/sum}

write.csv(genetics20, file = "genetics20.csv")

genetics_sub <- cbind(genetics[1], genetics1[c(1000:1002)], genetics2[c(1001:1003)], genetics3[c(1001:1003)], genetics4[c(1001:1003)], 
  genetics5[c(1001:1003)], genetics6[c(1001:1003)], genetics7[c(1001:1003)], genetics8[c(1001:1003)], genetics9[c(1001:1003)], genetics10[c(1001:1003)], 
  genetics11[c(1001:1003)], genetics12[c(1001:1003)], genetics13[c(1001:1003)], genetics14[c(1001:1003)], genetics15[c(1001:1003)], genetics16[c(1001:1003)],
  genetics17[c(1001:1003)], genetics18[c(1001:1003)], genetics19[,c(1001:1003)], genetics20[c(467:469)])

write.csv(genetics_sub,file = "genetics_sub.csv")
colnames(genetics_sub)

genetics_sub <- genetics_sub[,-1]

gene <- read.csv("genetics_sub.csv")
rm(genetics_sub)

############################
## Dimension reduction
############################
dim(gene)
Xdata <- gene[,2:61] 
head(Xdata)

pca <- prcomp(Xdata)
screeplot(pca,type="lines") # looks like there are 2 principal components

pca$rotation[,1:2]*100 # because we have 2 prin. comp.s 
colnames(gene)

# get the principal components
factors <- pca$x[,1:2]
head(factors)
summary(factors)
cov(factors)

# algebra to standardize the principal components
library(expm)
factors <- factors %*% solve(sqrtm(crossprod(factors))) * sqrt(nrow(factors)) 
crossprod(factors)/nrow(factors)
cov(factors) #mean zero, var one

# modeling with the factors
model <- glm(Hybrid~factors,data=gene)
summary(model9) # Note the R-squared here is not the best

# clustering with the factors
groups5 <- apply(factors^2,1,which.max)
gene$grouping <- groups5

## Clustering the variables using PCA
pca$rotation[,1:2]*1000
apply(pca$rotation[,1:2]^2,1,which.max)
  
