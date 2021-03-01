library(ggplot2)

params100 <- read.csv(file='results/params_studentT100.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params200 <- read.csv(file='results/params_studentT200.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

ggplot() + 
  geom_density(data=params100, aes(x=phi1, colour='T=100')) +
  geom_density(data=params200, aes(x=phi1, colour='T=200')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")











plot(density(params200[,1]), xlim=c(-4,4))
lines(density(params100[,1]), type = "l", col = "blue")
abline(v=0.7, col="red")
legend(-4, 1, legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8)

plot(density(params200[,2]), xlim=c(-4,4))
lines(density(params100[,2]), type = "l", col = "blue")
abline(v=-1.3, col="red")

plot(density(params200[,3][params200[,3] > -4 &  params200[,3] < 4]), xlim=c(-4,4))
lines(density(params100[,3][params100[,3] > -4 &  params100[,3] < 4]), type = "l", col = "blue")
abline(v=0, col="red")

plot(density(params200[,4][params200[,4] > -4 &  params200[,4] < 4]), xlim=c(-4,4))
lines(density(params100[,4][params100[,4] > -4 &  params100[,4] < 4]), type = "l", col = "blue")
abline(v=2, col="red")

# 
# 
# 
# 
# 
# 
# # plot(density(params100[,1][params100[,1] > -4 &  params100[,1] < 4]), xlim=c(-4,4))
# # plot(density(params100[,2][params100[,2] > -4 &  params100[,2] < 4]), xlim=c(-4,4))
# # plot(density(params100[,3][params100[,3] > -4 &  params100[,3] < 4]), xlim=c(-4,4))
# # plot(density(params100[,4][params100[,4] > -4 &  params100[,4] < 4]), xlim=c(-4,4))
# # 
# # plot(density(params200[,1][params200[,1] > -4 &  params200[,1] < 4]), xlim=c(-4,4))
# # lines(density(params100[,1][params100[,1] > -4 &  params100[,1] < 4]), type = "l", col = "blue")
# # 
# # plot(density(params200[,2][params200[,2] > -4 &  params200[,2] < 4]), xlim=c(-4,4))
# # lines(density(params100[,2][params100[,2] > -4 &  params100[,2] < 4]), type = "l", col = "blue")
# # 
# # plot(density(params200[,3][params200[,3] > -4 &  params200[,3] < 4]), xlim=c(-4,4))
# # lines(density(params100[,3][params100[,3] > -4 &  params100[,3] < 4]), type = "l", col = "blue")
# # 
# # plot(density(params200[,4][params200[,4] > -4 &  params200[,4] < 4]), xlim=c(-4,4))
# # lines(density(params100[,4][params100[,4] > -4 &  params100[,4] < 4]), type = "l", col = "blue")
# # 
# # 
# # 
# # 
# # 
# # 
# # 
# # # Y <- read.csv(file='Y_CORN_SOY.csv', header=FALSE, col.names=c("Y1", "Y2"))
# # # plot(Y[,2],type = "l", col = "red", xlab = "", ylab = "")
# # # lines(Y[,1], type = "l", col = "blue")
# # # 
# # # acf(Y[,1], 25, pl=TRUE)$acf[,,1]
# # # acf(Y[,2], 25, pl=TRUE)$acf[,,1]
# # # ccf(Y[,1], Y[,2], 25, pl=TRUE)
# # # ccf(Y[,2], Y[,1], 25, pl=TRUE)
# # # 
# # # 
# # # 
# # # # VAR(1) estimation with simulated data
# # # H <- determine_H(Y)
# # # estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=Y, H=10, control=list(maxit=1000))
# # # estimation_VAR1
# # # 
# # # estimation_VAR2 <- optim(c(0,0,0,0,0,0,0,0), portmanteau_fun_VAR2, Y=Y, H=10, control=list(maxit=1000))
# # # 
# # # params <- estimation_VAR2$par
# # # phi1 <- rbind(c(params[1], params[2]), c(params[3], params[4]))
# # # phi2 <- rbind(c(params[5], params[6]), c(params[7], params[8]))
# # # 
# # # print(phi2)
# # # print(eigen(phi2)$values)
# # # 
# # # 
# # # 
# # # 
# # # 
# # # 
# # # params <- estimation_VAR1$par
# # # phi1 <- rbind(c(params[1], params[2]), c(params[3], params[4]))
# # # # phi2 <- rbind(c(params[5], params[6]), c(params[7], params[8]))
# # # 
# # # print(phi1)
# # # print(eigen(phi1)$values)
# # # 
# # # 
# # # 
# # # 
# # # 
# # # 
# # # # Set seed
# # # set.seed(10)
# # # 
# # # # Read data
# # # # Y <- read.csv(file = 'Y_sim_Seed10.csv', header = FALSE, col.names=c("Y1", "Y2"))
# # # Y <- read.csv(file='Y_sim.csv', header=FALSE, col.names=c("Y1", "Y2"))
# # # H <- determine_H(Y)
# # # 
# # # # Simulate Y - student-t errors, T=1000, dof=4
# # # A <- rbind(c(1, -1), c(0,1))
# # # J <- c(0.7, 2)
# # # sim1 <- simulateVar1(Y, 1000, 4, A, J)
# # # 
# # # sim1$Y_star_sim
# # # 
# # # # Plot simulated data
# # # # plot(sim1$Y_star_sim[,1],type = "l", col = "red", xlab = "", ylab = "")
# # # # lines(sim1$Y_star_sim[,2], type = "l", col = "blue")
# # # 
# # # # # VAR(1) estimation with simulated data
# # # # H <- determine_H(sim1$Y_star_sim)
# # # # estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=sim1$Y_star_sim, H=H, method="BFGS", control=list(maxit=200))
# # # 
# # # # estimation_VAR1
# # # 
# # # # # VAR(2) estimation
# # # # estimation_VAR2 <- optim(c(0,0,0,0,0,0,0,0), portmanteau_fun_VAR2, Y=Y, H=H, method = "BFGS", control=list(maxit=1000))
# # # 
# # # 
# # # 
# # # 
# # # 
# # # 
# # # 
# # # 
# # # 
# # # # VAR(3) estimation
# # # # estimation_VAR3 <- optim(c(0,0,0,0,0,0,0,0,0,0,0,0), portmanteau_fun_VAR3, Y=Y, H=H, method = "BFGS", control=list(maxit=1000))
# # # 
# # # 
# # # # params <- result$par
# # # # phi1 <- rbind(c(params[1], params[2]), c(params[3], params[4]))
# # # # phi2 <- rbind(c(params[5], params[6]), c(params[7], params[8]))
# # # 
# # # # print(phi1)
# # # # print(eigen(phi1)$values)
# # # # 
# # # # print(phi2)
# # # # print(eigen(phi2)$values)
# # # 
# # # 
