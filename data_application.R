setwd("~/Documents/master-thesis-R")
source("portmanteau_funs.R")

Y <- read.csv(file='data.csv', header=FALSE, col.names=c("Y1", "Y2"))
Y_detrended <- read.csv(file='dataDetrended.csv', header=FALSE, col.names=c("Y1", "Y2"))

# plot(Y[,1],type = "l", col = "red", xlab = "", ylab = "")
# plot(Y[,2],type = "l", col = "red", xlab = "", ylab = "")
# 
# plot(Y_detrended[,1],type = "l", col = "red", xlab = "", ylab = "")
# plot(Y_detrended[,2],type = "l", col = "red", xlab = "", ylab = "")

# ACF/CCF
acf(Y_detrended[,1], 120, pl=T)
acf(Y_detrended[,2], 100, pl=T)
ccf(Y_detrended[,1], Y[,2], 20, pl=T)


# Estimate VAR(1) - Nelder-Mead - 1000 iterations
H <- 120
estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=Y_detrended, H=H, control=list(maxit=1000))
params <- estimation_VAR1$par
phi1 <- rbind(c(params[1], params[2]), c(params[3], params[4]))
print(phi1)
print(eigen(phi1)$values)


H <- 200
estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=Y_detrended, H=H, control=list(maxit=1000))
params <- estimation_VAR1$par
phi1 <- rbind(c(params[1], params[2]), c(params[3], params[4]))
print(phi1)
print(eigen(phi1)$values)
