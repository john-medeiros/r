#
# Compara o indice GDP usando o GoogleVis.
# Índice GDP é obtido do site do Banco Mundial: http://data.worldbank.org/
#
library(WDI)
library(googleVis)

GDP<-WDI(indicator=c("NY.GDP.MKTP.CD" ), country=c("BR","RU","CN", "IN", "ZA"), start=2009, end=2015);

colnames(GDP)[2] <- "pais";
colnames(GDP)[3] <- "gdp";
colnames(GDP)[4] <- "ano";

Motion=gvisMotionChart(GDP, 
                       idvar="pais", 
                       timevar="ano")
plot(Motion)
