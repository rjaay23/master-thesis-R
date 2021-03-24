# Set seed
set.seed(23)

###### Simulate Y - VAR(1) - student-t errors, T=100, dof=4 ######
T_ <- 100
dof <- 4
params_studentT <- matrix(nrow = sims, ncol = 5)
for (i in 1:sims) {
  # Simulate Y
  sim <- simulateVar1_studentT(T_, dof, A, J)
  
  # Choose H afterwards, iterative procedure similar to g2s
  # Set confidence bounds for stop condition on max lag
  conf <- (1.96 / sqrt(nrow(sim$Y_sim)))^2
  diff <- 0
  last <- 0
  
  for (H in 1:25) {
    # Estimate VAR(1) - Nelder-Mead - 1000 iterations
    estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=sim$Y_sim, H=H, control=list(maxit=1000))
    
    if (H > 1) {
      # Stop condition, means no added value anymore, so optimal H is H-1
      if (estimation_VAR1$value - last < conf) {
        optimalH <- H-1
        break
      }
      # No optimal value found in the range till 25 lags
      else {
        optimalH <- H
      }
    }
    last <- estimation_VAR1$value
    lastEstim <- estimation_VAR1
  }
  
  # # Estimate again with the optimal H and save results
  # estimation_VAR1 <- optim(c(0,0,0,0), portmanteau_fun_VAR1, Y=sim$Y_sim, H=optimalH, control=list(maxit=1000))
  
  # Add to results matrix for later export
  params_studentT[i,1:4] <- lastEstim$par
  params_studentT[i,5] <- lastEstim$convergence
  
  # print i to see progress
  print('optimal H')
  print(optimalH)
  print(i)
}

# Save results to csv
write.table(params_studentT, file="results/params_studentT100_optimalH.csv", sep = ',', row.names = FALSE, col.names = FALSE)
