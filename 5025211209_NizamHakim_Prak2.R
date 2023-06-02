# 1a
data <- Prak2_no1
data
sd(data$V2-data$V1)

# 1b
t.test(data$V2, data$V1, paired=TRUE)

# 2a
zsum.test(mean.x=23500, sigma.x = 3000, n.x = 100, 
          alternative = "greater", mu = 25000, 
          conf.level = 0.95)

# 3b
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 20, 
          mean.y=2.79, s.y = 1.5, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# 3c
plotDist(dist='t', df=2)

# 3d
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

# 4a
qplot(x = Temp, y = Light, geom = "auto", data = GTL) + facet_grid(.~Glass, labeller = label_both)

# 4b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp <- as.factor(GTL$Temp)

anova <- aov(Light ~ Glass*Temp, data = GTL)
summary(anova)

# 4c
summary <- group_by(GTL, Glass, Temp) %>%
    summarise(mean=mean(Light), sd=sd(Light)) %>%
    arrange(desc(mean))
summary
