library(quantmod)
library(TTR)

getSymbols("NVDA",src="yahoo")
#dfNVDA <- (cbind(NVDA$NVDA.High, NVDA$NVDA.Low, NVDA$NVDA.Close))
#dfNVDAvol <- c(NVDA$NVDA.Volume)

NVDA2 <- NVDA['2015::'] # everything in NVDA, from 2016 onward 

mfi <- MFI(NVDA2[,c("NVDA.High","NVDA.Low","NVDA.Close")], NVDA2[,"NVDA.Volume"])
plot(mfi)
plot(NVDA2)

par(mfrow=c(2,1))
plot(mfi, main="Money Flow Index")
plot(NVDA2, main="Price History")