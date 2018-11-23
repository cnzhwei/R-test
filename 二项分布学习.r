# R语言结合生物统计学学习
# 本例为二项分布学习
# by：zhwei

x <- seq(0,50,by = 1)
y <- dbinom(x,50,0.5)
png(file = "dbinom.png")
plot(x, y)
dev.off()

x <- pbinom(25,50,0.5)
print(x)