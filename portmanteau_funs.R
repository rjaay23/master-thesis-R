determine_H <- function(Y) {
  conf <- 1.96 / sqrt(nrow(Y))
  
  Y1_acf <- acf(Y[,1], 25, pl=FALSE)$acf[,,1]
  Y2_acf <- acf(Y[,2], 25, pl=FALSE)$acf[,,1]
  Y1_Y2_ccf <- ccf(Y[,1], Y[,2], 25, pl=FALSE)
  Y1_Y2_ccf_neg <- rev(Y1_Y2_ccf$acf[,,1][1:26])
  Y1_Y2_ccf_pos <- Y1_Y2_ccf$acf[,,1][26:51]
  
  H <- 1
  for (x in list(Y1_acf, Y2_acf, Y1_Y2_ccf_neg, Y1_Y2_ccf_pos)) {
    for (i in 1:26) {
      if (x[i] < -conf || x[i] > conf) {
        if (i-1>H) {
          H <- i-1
        }
      }
      else {
        break
      }
    }
  }
  return(H)
}

portmanteau_fun_VAR1 <- function(theta, Y, H) {
  phi1 <- rbind(c(theta[1],theta[2]),c(theta[3],theta[4]))
  
  eps <- matrix(nrow = nrow(Y)-1, ncol = 2)
  for(t in 2:nrow(Y)) {
    Y_t <- rbind(c(Y[t,1]), c(Y[t,2]))
    Y_lag1 <- rbind(c(Y[t-1,1]), c(Y[t-1,2]))
    
    eps[t-1,] <- t(Y_t - phi1%*%Y_lag1)
  }
  Z1 <- eps[,1]
  Z2 <- eps[,2]
  Z3 <- eps[,1]^2
  Z4 <- eps[,2]^2
  Z <- list(Z1, Z2, Z3, Z4)
  
  portmanteau_statistic <- 0
  H_start <- H + 2
  H_end <- (H*2) + 1
  for (j in Z) {
    for (k in Z) {
      portmanteau_statistic <- portmanteau_statistic + sum(ccf(j, k, H, pl=FALSE)$acf[,,1][H_start:H_end]^2)
    }   
  }
  
  return(portmanteau_statistic)
}

portmanteau_fun_VAR2 <- function(theta, Y, H) {
  phi1 <- rbind(c(theta[1],theta[2]),c(theta[3],theta[4]))
  phi2 <- rbind(c(theta[5],theta[6]),c(theta[7],theta[8]))
  
  eps <- matrix(nrow = nrow(Y)-2, ncol = 2)
  for(t in 3:nrow(Y)) {
    Y_t <- rbind(c(Y[t,1]), c(Y[t,2]))
    Y_lag1 <- rbind(c(Y[t-1,1]), c(Y[t-1,2]))
    Y_lag2 <- rbind(c(Y[t-2,1]), c(Y[t-2,2]))
    
    eps[t-2,] <- t(Y_t - phi1%*%Y_lag1 - phi2%*%Y_lag2)
  }
  Z1 <- eps[,1]
  Z2 <- eps[,2]
  Z3 <- eps[,1]^2
  Z4 <- eps[,2]^2
  Z <- list(Z1, Z2, Z3, Z4)
  
  portmanteau_statistic <- 0
  H_start <- H + 2
  H_end <- (H*2) + 1
  for (j in Z) {
    for (k in Z) {
      portmanteau_statistic <- portmanteau_statistic + sum(ccf(j, k, H, pl=FALSE)$acf[,,1][H_start:H_end]^2)
    }   
  }
  
  return(portmanteau_statistic)
}

portmanteau_fun_VAR3 <- function(theta, Y, H) {
  phi1 <- rbind(c(theta[1],theta[2]),c(theta[3],theta[4]))
  phi2 <- rbind(c(theta[5],theta[6]),c(theta[7],theta[8]))
  phi3 <- rbind(c(theta[9],theta[10]),c(theta[11],theta[12]))
  
  eps <- matrix(nrow = nrow(Y)-3, ncol = 2)
  for(t in 4:nrow(Y)) {
    Y_t <- rbind(c(Y[t,1]), c(Y[t,2]))
    Y_lag1 <- rbind(c(Y[t-1,1]), c(Y[t-1,2]))
    Y_lag2 <- rbind(c(Y[t-2,1]), c(Y[t-2,2]))
    Y_lag3 <- rbind(c(Y[t-3,1]), c(Y[t-3,2]))
    
    eps[t-3,] <- t(Y_t - phi1%*%Y_lag1 - phi2%*%Y_lag2 - phi3%*%Y_lag3)
  }
  
  Z1 <- eps[,1]
  Z2 <- eps[,2]
  Z3 <- eps[,1]^2
  Z4 <- eps[,2]^2
  Z <- list(Z1, Z2, Z3, Z4)
  
  portmanteau_statistic <- 0
  H_start <- H + 2
  H_end <- (H*2) + 1
  for (j in Z) {
    for (k in Z) {
      portmanteau_statistic <- portmanteau_statistic + sum(ccf(j, k, H, pl=FALSE)$acf[,,1][H_start:H_end]^2)
    }   
  }
  
  return(portmanteau_statistic)
}
