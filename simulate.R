simulateVar1_studentT <- function(T_, dof, A, J) {
  # Simulate double as much errors and burn first and last 25% later
  T_ <- T_*2
  
  # Simulate errors - matrix of Tx2 random student-t
  eps_sim <- cbind(rt(T_, dof), rt(T_, dof))
  
  # Compute transformed errors
  eps_star_sim <- matrix(nrow = T_, ncol = 2)
  for(t in 1:T_) {
    eps_star_sim[t,] <- solve(A)%*%eps_sim[t,]
  }

  # Compute Y star - causal component and noncausal component
  Y_star_sim <- matrix(nrow = T_, ncol = 2)
  
  # Compute causal component
  for(t in 1:T_) {
    if (t == 1) {
      Y_star_sim[t,1] <- J[1] * 0 + eps_star_sim[t,1]
    }
    else {
      Y_star_sim[t,1] <- J[1] * Y_star_sim[t-1,1] + eps_star_sim[t,1]
    }
  }
  
  # Compute noncausal component
  for(t in T_:1) {
    if (t == T_) {
      Y_star_sim[t,2] <- (1/J[2]) * 0 + (1/J[2]) * 0
    }
    else {
      Y_star_sim[t,2] <- (1/J[2]) * Y_star_sim[t+1,2] + (1/J[2]) * eps_star_sim[t+1,2]
    }
  }
  
  # Compute Y
  Y_sim <- matrix(nrow = T_, ncol = 2)
  
  for(t in 1:T_) {
    Y_sim[t,] = A%*%Y_star_sim[t,]
  }
  
  # Burn first and last 25%
  keep_start <- T_*0.25 + 1
  keep_end <- T_*0.75
  Y_star_sim <- Y_star_sim[keep_start:keep_end,]
  Y_sim <- Y_sim[keep_start:keep_end,]
  
  return(list(Y_sim=Y_sim, Y_star_sim=Y_star_sim))
}

simulateVar2_studentT <- function(T_, dof, A, J) {
  # Simulate double as much errors and burn first and last 25% later
  T_ <- T_*2
  
  # Simulate errors - matrix of Tx2 random student-t
  eps_sim <- cbind(rt(T_, dof), rt(T_, dof))
  
  # TODO: Compute transformed errors
  eps_star_sim <- matrix(nrow = T_, ncol = 2)
  for(t in 1:T_) {
    eps_star_sim[t,] <- solve(A)%*%eps_sim[t,]
  }
  
  # Compute Y star - causal component and noncausal component
  Y_star_sim <- matrix(nrow = T_, ncol = 2)
  
  # Compute causal component
  for(t in 1:T_) {
    if (t == 1) {
      Y_star_sim[t,1] <- J[1] * 0 + eps_star_sim[t,1]
    }
    else {
      Y_star_sim[t,1] <- J[1] * Y_star_sim[t-1,1] + eps_star_sim[t,1]
    }
  }
  
  # Compute noncausal component
  for(t in T_:1) {
    if (t == T_) {
      Y_star_sim[t,2] <- (1/J[2]) * 0 + (1/J[2]) * 0
    }
    else {
      Y_star_sim[t,2] <- (1/J[2]) * Y_star_sim[t+1,2] + (1/J[2]) * eps_star_sim[t+1,2]
    }
  }
  
  # Compute Y
  Y_sim <- matrix(nrow = T_, ncol = 2)
  
  for(t in 1:T_) {
    Y_sim[t,] = A%*%Y_star_sim[t,]
  }
  
  # Burn first and last 25%
  keep_start <- T_*0.25 + 1
  keep_end <- T_*0.75
  Y_star_sim <- Y_star_sim[keep_start:keep_end,]
  Y_sim <- Y_sim[keep_start:keep_end,]
  
  return(list(Y_sim=Y_sim, Y_star_sim=Y_star_sim))
}
