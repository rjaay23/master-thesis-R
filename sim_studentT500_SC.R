# Set seed
set.seed(23)

###### Simulate Y - VAR(1) - student-t errors, T=100, dof=4 ######
T_ <- 500
dof <- 4
params_studentT <- matrix(nrow = sims, ncol = 5)
for (i in 1:sims) {
  # Simulate Y
  sim <- simulateVar1_studentT(T_, dof, A, J)
  
  # Dynamic H
  H <- VARselect(sim$Y_sim, lag.max = 25, type="none")$selection[3]
  
  # Estimate VAR(1) - Nelder-Mead - 1000 iterations
  estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=sim$Y_sim, H=H, control=list(maxit=1000))
  
  # Add to results matrix for later export
  params_studentT[i,1:4] <- estimation_VAR1$par
  params_studentT[i,5] <- estimation_VAR1$convergence
  
  # print i to see progress
  print(i)
}

# Save results to csv
write.table(params_studentT, file="results/params_studentT500_SC.csv", sep = ',', row.names = FALSE, col.names = FALSE)
