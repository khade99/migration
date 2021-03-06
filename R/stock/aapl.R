library(ggplot2)

require(devEMF)
emf('aapl.emf')

aapl <- read.csv("http://www.google.com/finance/historical?q=NASDAQ:AAPL&authuser=0&output=csv ", sep=",", header=1)
aapl = aapl[nrow(aapl):1, ]

#print(aapl)
#print(aapl.google)
print(aapl[, 1])

#write.csv(aapl, file = "appl.csv")
#write.table(aapl, file = "appl.tab")

#axis = (1, lab = aapl[2])
#axis = (2, aapl[2])
#box()

# close value
#matplot(aapl[,1], aapl[,5], type = "l", col="red")
#plot(aapl[,5], type = "l", col="blue")
#plot(aapl[,1], aapl[,5], xlab = "TIME", ylab = "PRICE ($)", type = "l", col="blue")
#plot(aapl[,0], aapl[,5], xlab = "TIME", ylab = "PRICE ($)", type = "l", col="blue")
plot(aapl[,5], xlab = "DATE", ylab = "STOCK VALUE ($)", type = "l", col="blue")

# open value
lines(aapl[,2], type = "l", col="red")

#plot(aapl[c(1:40), 1], aapl[c(1:40),5], xlab = "TIME", ylab = "PRICE ($)", type = "l", col="blue")
#plot(aapl[c(1:40),5], xlab = "TIME", ylab = "PRICE ($)", type = "l", col="blue")
#plot(aapl[,1], aapl[,5], type = "l", col="blue")
#plot(aapl[,5], type = "l", col="red")
#plot(aapl[5], header = TRUE, col="blue")
#plot(aapl[2], aapl[3,6], header = TRUE)
#plot(aapl[2], aapl[3,6])

# simple example
#x <- c(1,3,6,9,12)
#y <- c(1.5,2,7,8,15)
#plot(x,y, pch=15, col="blue")

# Example 2. Draw a plot, set a bunch of parameters.
#plot(x,y, xlab="x axis", ylab="y axis", main="my plot", ylim=c(0,20), xlim=c(0,20), pch=15, col="blue")
# fit a line to the points
#myline.fit <- lm(y ~ x)

# get information about the fit
#summary(myline.fit)

# draw the fit line on the plot
#abline(myline.fit)

# add some more points to the graph
#x2 <- c(0.5, 3, 5, 8, 12)
#y2 <- c(0.8, 1, 2, 4, 6)

#points(x2, y2, pch=16, col="green")

# header = TRUE ignores the first line, check.names = FALSE allows '+' in 'C++'
#benchmark <- read.table("", header = TRUE, row.names = "vwnd", check.names = FALSE)

# 't()' is matrix tranposition, 'beside = TRUE' separates the benchmarks, 'heat' provides nice colors
#barplot(t(as.matrix(benchmark)), beside = TRUE, col = heat.colors(6))
#barplot(t(as.matrix(benchmark)), beside = TRUE, col = heat.colors(6), xlab = "DATE", ylab = "STOCK VALUE ($)")

# 'cex' stands for 'character expansion', 'bty' for 'box type' (we don't want borders)
#legend("topright", names(benchmark), cex = 0.9, bty = "n", fill = heat.colors(6))

