# R语言结合生物统计学学习
# 本例为二项分布学习
# by：zhwei

# 这个模块是创建向量X，输出一个概率散点png图，学习dbinom函数
x <- seq(0,50,by = 1)
y <- dbinom(x,50,0.5)
png(file = "dbinom.png")
plot(x, y)
dev.off()

# 学习pbinom函数，累计概率
x <- pbinom(26,50,0.5) #摇骰子50次，其中朝上 小于等于26 次的概率
print(x)

# 学习qbinom，当摇51次时，正面朝上累积概率为0.25的对应的次数，适合反推
x <- qbinom(0.25,51,0.5)  #输出为23
print(x)

# 从给定样本的概率附近产生随机值
x <- rbinom(10,50,0.5)
print(x)
