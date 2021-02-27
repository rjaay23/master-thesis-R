setwd("~/Documents/master-thesis-R")
source("portmanteau_funs.R")
source("simulate.R")

# Set seed
set.seed(42)

########## SIMULATION STUDY VAR(1) ##########
A <- rbind(c(1, -1), c(0,1))
J <- c(0.7, 2)

###### Simulate Y - VAR(1) - student-t errors, T=100, dof=4 ######
T_ <- 100
sims <- 1000
dof <- 4
params_studentT <- matrix(nrow = sims, ncol = 5)
for (i in 1:sims) {
  # Simulate Y
  sim <- simulateVar1_studentT(T_, dof, A, J)
  
  # Dynamic H
  H <- determine_H(sim$Y_sim)

  # Estimate VAR(1) - Nelder-Mead - 1000 iterations
  estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=sim$Y_sim, H=H, control=list(maxit=1000))
  
  # Add to results matrix for later export
  params_studentT[i,1:4] <- estimation_VAR1$par
  params_studentT[i,5] <- estimation_VAR1$convergence
  
  # print i to see progress
  print(i)
}

# Save results to csv
write.table(params_studentT, file="results/params_studentT100.csv", sep = ',', row.names = FALSE, col.names = FALSE)

###### Simulate Y - VAR(1) - student-t errors, T=200, dof=4 ######
T_ <- 200
sims <- 1000
dof <- 4
params_studentT <- matrix(nrow = sims, ncol = 5)
for (i in 1:sims) {
  # Simulate Y
  sim <- simulateVar1_studentT(T_, dof, A, J)
  
  # Dynamic H
  H <- determine_H(sim$Y_sim)

  # Estimate VAR(1) - Nelder-Mead - 1000 iterations
  estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=sim$Y_sim, H=H, control=list(maxit=1000))
  
  # Add to results matrix for later export
  params_studentT[i,1:4] <- estimation_VAR1$par
  params_studentT[i,5] <- estimation_VAR1$convergence
  
  # print i to see progress
  print(i)
}

# Save results to csv
write.table(params_studentT, file="results/params_studentT200.csv", sep = ',', row.names = FALSE, col.names = FALSE)





