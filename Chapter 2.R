library(fpp2)
autoplot(melsyd[,"Economy.Class"])+
  xlab("Year") + ylab("Thousands")

autoplot(a10)+
  ggtitle("Antidiabetic drug sales")+
  xlab("Year") + ylab("$ million")

autoplot(motel[,2:1]/1000, facet=TRUE) +
  xlab("Year") + ylab("")
