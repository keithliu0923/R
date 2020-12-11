mark_g <- read.table("C:/Users/s206433/Mark_gender.dat", header = TRUE , sep = ',', dec = '.')
colnames(mark_g) <- c("sid","f_name","l_name","gender","q1","q2","ca","mt","final","total","grade")

#(i)#
table(mark_g$gender) 

#(ii)#
mark_mB <- mark_g[mark_g$gender == "M" & mark_g$grade == "B",]
summary(mark_mB)

#(iii)#
mark_mBca <- mark_mB[mark_mB$ca > 70,]
print(mark_mBca[7,7])

#(iv)#
f <- mark_g[mark_g$gender == "F",]
fn <- aov (total~q2, data = f)
summary(fn)