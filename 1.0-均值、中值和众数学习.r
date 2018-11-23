# R语言结合生物统计学学习
# 本例为mean(),median()学习
# by：zhwei

# mean(x, trim = 0, na.rm = FALSE, ...)
# mean() 的用法

#统计一组数据的均值，去掉最大和最小
x <- c(25,26,78,15,36,75,65,77) 
x_bar <- mean(x,trim=1)
print(x_bar)

# median(x, na.rm = FALSE)

#求一组数据中值，去掉NA
x <- c(2,5,6,1,1,NA)
x_median = median(x,na.rm = TRUE)
print(x_median)

#R中没众数，自己定义函数功能
getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}
x <- c(1,1,2,2,2,2,3,3,4,5,6,7)
result <- getmode(x)
print(result)