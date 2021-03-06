setwd("~/Documents/master-thesis-R")
source("portmanteau_funs.R")
source("simulate.R")

########## SIMULATION STUDY VAR(1) ##########
A <- rbind(c(1, -1), c(0,1))
J <- c(0.7, 2)
sims <- 1000

# ###### Simulate Y - VAR(1) - student-t errors, T=100, dof=4 ######
# source("sim_studentT100.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=300, dof=4 ######
# source("sim_studentT300.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=500, dof=4 ######
# source("sim_studentT500.R")

###### Simulate Y - VAR(1) - student-t errors, T=700, dof=4 ######
source("sim_studentT700.R")

###### Simulate Y - VAR(1) - student-t errors, T=900, dof=4 ######
source("sim_studentT900.R")

# ###### Simulate Y - VAR(1) - student-t errors, T=100, dof=4 - static H=5 ######
# source("sim_studentT100_staticH5.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=300, dof=4 - static H=5 ######
# source("sim_studentT300_staticH5.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=500, dof=4 - static H=5 ######
# source("sim_studentT500_staticH5.R")

###### Simulate Y - VAR(1) - student-t errors, T=700, dof=4 - static H=5 ######
source("sim_studentT700_staticH5.R")

###### Simulate Y - VAR(1) - student-t errors, T=700, dof=4 - static H=5 ######
source("sim_studentT900_staticH5.R")

# ###### Simulate Y - VAR(1) - student-t errors, T=100, dof=4 - static H=10 ######
# source("sim_studentT100_staticH10.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=300, dof=4 - static H=10 ######
# source("sim_studentT300_staticH10.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=500, dof=4 - static H=10 ######
# source("sim_studentT500_staticH10.R")
# 
###### Simulate Y - VAR(1) - student-t errors, T=700, dof=4 - static H=10 ######
source("sim_studentT700_staticH10.R")

###### Simulate Y - VAR(1) - student-t errors, T=900, dof=4 - static H=10 ######
source("sim_studentT900_staticH10.R")

# ###### Simulate Y - VAR(1) - student-t errors, T=100, dof=4 - static H=15 ######
# source("sim_studentT100_staticH15.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=300, dof=4 - static H=15 ######
# source("sim_studentT300_staticH15.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=500, dof=4 - static H=15 ######
# source("sim_studentT500_staticH15.R")

###### Simulate Y - VAR(1) - student-t errors, T=700, dof=4 - static H=15 ######
source("sim_studentT700_staticH15.R")

###### Simulate Y - VAR(1) - student-t errors, T=900, dof=4 - static H=15 ######
source("sim_studentT900_staticH15.R")

# ###### Simulate Y - VAR(1) - student-t errors, T=100, dof=4 - static H=20 ######
# source("sim_studentT100_staticH20.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=300, dof=4 - static H=20 ######
# source("sim_studentT300_staticH20.R")
# 
# ###### Simulate Y - VAR(1) - student-t errors, T=500, dof=4 - static H=20 ######
# source("sim_studentT500_staticH20.R")
# 
###### Simulate Y - VAR(1) - student-t errors, T=700, dof=4 - static H=20 ######
source("sim_studentT700_staticH20.R")

###### Simulate Y - VAR(1) - student-t errors, T=900, dof=4 - static H=20 ######
source("sim_studentT900_staticH20.R")
