library(ggplot2)

require(devEMF)
emf('cpu-postcopy.emf')

#png("cpu-postcopy.emf")
#postscript("plot.eps")
#emf("plot.emf")

cpus <- scan (pipe("awk '{print }' cpu-postcopy.dat"), skip=2)
#cpus <- read.table("cpu-postcopy.dat", colClasses=3)

# header = TRUE ignores the first line, check.names = FALSE allows '+' in 'C++'
#benchmark <- read.table("cpu-postcopy.dat", header = TRUE, row.names = "time", check.names = FALSE)
#benchmark <- read.table("cpu-postcopy.dat", check.names = FALSE, comment.char = "#")
#benchmark <- read.table("cpu-postcopy.dat", header = TRUE, check.names = FALSE, comment.char = "#")
#benchmark <- read.table("cpu-postcopy.dat", check.names = FALSE)

#cpus <- read.table("cpu-postcopy.dat", header = TRUE, row.name = "time")
#cpus <- read.table("cpu-postcopy.dat", header = TRUE)
#cpus <- scan("cpu-postcopy.dat", skip=1)
#cpus <- read.csv("cpu-postcopy.dat", sep=",", head=TRUE)
print(cpus)
#names(cpus)

#plot(cpus)
#hist(cpus)

# 't()' is matrix tranposition, 'beside = TRUE' separates the benchmarks, 'heat' provides nice colors
#barplot(t(as.matrix(benchmark)), beside = TRUE, col = heat.colors(6))
#barplot((as.matrix(benchmark)), beside = TRUE, col = heat.colors(6), xlab = "TIME (SEC)", ylab = "CPU USAGE (%)")
#barplot(benchmark, beside = TRUE, xlab = "TIME (SEC)", ylab = "CPU USAGE (%)")
#barplot((as.matrix(benchmark)), col = heat.colors(6), xlab = "TIME (SEC)", ylab = "CPU USAGE (%)")
#barplot((as.matrix(benchmark)), xlab = "TIME (SEC)", ylab = "CPU USAGE (%)")

#barplot((as.matrix(cpus)), beside = TRUE, xlab = "TIME (SEC)", ylab = "CPU USAGE (%)")
barplot(t(as.matrix(cpus)), xlab = "TIME (SEC)", ylab = "CPU USAGE (%)")

# 'cex' stands for 'character expansion', 'bty' for 'box type' (we don't want borders)
#legend("topright", names(benchmark), cex = 0.9, bty = "n", fill = heat.colors(6))

