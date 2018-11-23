# hello R
---

**R学习笔记**

by:zhwei

---

### 二项分布
二项分布，R有四个内置函数表示二项分布
```
dbinom(x, size, prob)
pbinom(x, size, prob)
qbinom(p, size, prob)
rbinom(n, size, prob)
```

参数描述如下：
- x是数字的向量。
- p是概率向量。
- n是观察的数量。
- size是试验的数量。
- prob是每个试验成功的概率。

**dbinom()**

表示每个点的概率密度分布,如下代码表示生成一个二项分布散点png图。

```
x <- seq(0,50,by = 1) #表示生成一个0-50的向量，增长度为1
y <- dbinom(x,50,0.5) #创建一个二项分布
png(file = "dbinom.png")
plot(x, y)
dev.off()  #save file
```

**pbinom()**

```
x <- pbinom(25,50,0.5)
print(x)
```