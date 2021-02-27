

# Y <- read.csv(file='Y_CORN_SOY.csv', header=FALSE, col.names=c("Y1", "Y2"))
# plot(Y[,2],type = "l", col = "red", xlab = "", ylab = "")
# lines(Y[,1], type = "l", col = "blue")
# 
# acf(Y[,1], 25, pl=TRUE)$acf[,,1]
# acf(Y[,2], 25, pl=TRUE)$acf[,,1]
# ccf(Y[,1], Y[,2], 25, pl=TRUE)
# ccf(Y[,2], Y[,1], 25, pl=TRUE)
# 
# 
# 
# # VAR(1) estimation with simulated data
# H <- determine_H(Y)
# estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=Y, H=10, control=list(maxit=1000))
# estimation_VAR1
# 
# estimation_VAR2 <- optim(c(0,0,0,0,0,0,0,0), portmanteau_fun_VAR2, Y=Y, H=10, control=list(maxit=1000))
# 
# params <- estimation_VAR2$par
# phi1 <- rbind(c(params[1], params[2]), c(params[3], params[4]))
# phi2 <- rbind(c(params[5], params[6]), c(params[7], params[8]))
# 
# print(phi2)
# print(eigen(phi2)$values)
# 
# 
# 
# 
# 
# 
# params <- estimation_VAR1$par
# phi1 <- rbind(c(params[1], params[2]), c(params[3], params[4]))
# # phi2 <- rbind(c(params[5], params[6]), c(params[7], params[8]))
# 
# print(phi1)
# print(eigen(phi1)$values)
# 
# 
# 
# 
# 
# 
# # Set seed
# set.seed(10)
# 
# # Read data
# # Y <- read.csv(file = 'Y_sim_Seed10.csv', header = FALSE, col.names=c("Y1", "Y2"))
# Y <- read.csv(file='Y_sim.csv', header=FALSE, col.names=c("Y1", "Y2"))
# H <- determine_H(Y)
# 
# # Simulate Y - student-t errors, T=1000, dof=4
# A <- rbind(c(1, -1), c(0,1))
# J <- c(0.7, 2)
# sim1 <- simulateVar1(Y, 1000, 4, A, J)
# 
# sim1$Y_star_sim
# 
# # Plot simulated data
# # plot(sim1$Y_star_sim[,1],type = "l", col = "red", xlab = "", ylab = "")
# # lines(sim1$Y_star_sim[,2], type = "l", col = "blue")
# 
# # # VAR(1) estimation with simulated data
# # H <- determine_H(sim1$Y_star_sim)
# # estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=sim1$Y_star_sim, H=H, method="BFGS", control=list(maxit=200))
# 
# # estimation_VAR1
# 
# # # VAR(2) estimation
# # estimation_VAR2 <- optim(c(0,0,0,0,0,0,0,0), portmanteau_fun_VAR2, Y=Y, H=H, method = "BFGS", control=list(maxit=1000))
# 
# 
# 
# 
# 
# 
# 
# 
# 
# # VAR(3) estimation
# # estimation_VAR3 <- optim(c(0,0,0,0,0,0,0,0,0,0,0,0), portmanteau_fun_VAR3, Y=Y, H=H, method = "BFGS", control=list(maxit=1000))
# 
# 
# # params <- result$par
# # phi1 <- rbind(c(params[1], params[2]), c(params[3], params[4]))
# # phi2 <- rbind(c(params[5], params[6]), c(params[7], params[8]))
# 
# # print(phi1)
# # print(eigen(phi1)$values)
# # 
# # print(phi2)
# # print(eigen(phi2)$values)
# 
# 
