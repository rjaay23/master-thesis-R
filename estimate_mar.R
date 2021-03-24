setwd("~/Documents/master-thesis-R")
source("portmanteau_funs.R")
library(ggplot2)

# Set seed
# set.seed(23)

A <- rbind(c(1, -1), c(0,1))
J <- c(0.7, 2)
T_ <- 100
dof <- 3

sim <- simulateVar1_studentT(T_, dof, A, J)

# Estimate VAR(1) - Nelder-Mead
conf <- (1.96 / sqrt(nrow(sim$Y_sim)))^2

diff <- 0
last <- 0
for (H in 1:25) {
  estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=sim$Y_sim, H=H, control=list(maxit=1000))
  # print(estimation_VAR1$value)
  print(estimation_VAR1$par)
  
  if (H > 1) {
    # Compute how much autocorr added between last value est H
    print(estimation_VAR1$value - last)
    
    # Stop condition
    if (estimation_VAR1$value - last < conf) {
      print('optimal H:')
      print(H)
      break
    }
  }
  last <- estimation_VAR1$value
}



# ysim_df <- as.data.frame(sim$Y_sim)
# ysim_df$ID <- seq.int(nrow(ysim_df))
# 
# ggplot() + 
#   geom_line(data=ysim_df, aes(x=ID, y=V1, colour='Y_1')) +
#   geom_line(data=ysim_df, aes(x=ID, y=V2, colour='Y_2')) +
#   xlab("") + 
#   ylab("")
