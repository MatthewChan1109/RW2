
library(readxl)
df <- read_excel("D:/02 自辦計畫/104 區域排水常用水文水理分析模式運用計畫書(1-3)/05 tc/TcforR.xlsx")

View(df)



plot(df$L, df$H, main = "Drainage H-L relationship", xlab = "L(KM)", ylab = "H(M)")


plot(df$L, df$H, type = "l", main = "Drainage H-L relationship", xlab = "Speed", ylab = "Dist")

#################
# his plot L H S #
#################

par(mfrow = c(3, 1))
hist(df$L, main = "Distribution of  L",xlab = "L")
hist(df$H, main = "Distribution of  H",xlab = "H")
hist(df$Slope, main = "Distribution of slope",xlab = "Slope")

#################
# boxplot L H S #
#################
par(mfrow = c(1, 3))
boxplot(df$L, main = "Distribution of  L")
boxplot(df$H, main = "Distribution of  H")
boxplot(df$Slope, main = "Distribution of slope")



table(factor(df$DrainageName))
barplot(table(factor(df$DrainageName)), main = "Number of Drainage_position", xlab = "counts", horiz = TRUE, las = 1, cex.names = 0.5)

