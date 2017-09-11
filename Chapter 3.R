library(fpp2)
beer2 <- window(ausbeer, start=1992, end=c(2007, 4))

# Produce some plots of forecasts
autoplot(beer2) +
  forecast::autolayer(meanf(beer2, h=11), PI=FALSE, series="Mean") +
  forecast::autolayer(naive(beer2, h=11), PI=FALSE, series="Naive") +
  forecast::autolayer(snaive(beer2, h=11), PI=FALSE, series="Seasonal Naive")+
  ggtitle("Forecast for quaterly beer production") +
  xlab("Year") + ylab("Megalitres") +
  guides(colour = guide_legend(title="Forecast"))
