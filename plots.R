setwd("~/Documents/master-thesis-R")
library(ggplot2)

params100 <- read.csv(file='results/params_studentT100.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300 <- read.csv(file='results/params_studentT300.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500 <- read.csv(file='results/params_studentT500.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params700 <- read.csv(file='results/params_studentT700.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params900 <- read.csv(file='results/params_studentT900.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_dynamicAIC <- read.csv(file='results/params_studentT100_AIC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_dynamicAIC <- read.csv(file='results/params_studentT300_AIC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_dynamicAIC <- read.csv(file='results/params_studentT500_AIC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params700_dynamicAIC <- read.csv(file='results/params_studentT700_AIC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params900_dynamicAIC <- read.csv(file='results/params_studentT900_AIC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_dynamicHQ <- read.csv(file='results/params_studentT100_HQ.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_dynamicHQ <- read.csv(file='results/params_studentT300_HQ.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_dynamicHQ <- read.csv(file='results/params_studentT500_HQ.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params700_dynamicHQ <- read.csv(file='results/params_studentT700_HQ.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params900_dynamicHQ <- read.csv(file='results/params_studentT900_HQ.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_dynamicSC <- read.csv(file='results/params_studentT100_SC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_dynamicSC <- read.csv(file='results/params_studentT300_SC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_dynamicSC <- read.csv(file='results/params_studentT500_SC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params700_dynamicSC <- read.csv(file='results/params_studentT700_SC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params900_dynamicSC <- read.csv(file='results/params_studentT900_SC.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_staticH5 <- read.csv(file='results/params_studentT100_staticH5.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_staticH5 <- read.csv(file='results/params_studentT300_staticH5.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_staticH5 <- read.csv(file='results/params_studentT500_staticH5.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params700_staticH5 <- read.csv(file='results/params_studentT700_staticH5.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params900_staticH5 <- read.csv(file='results/params_studentT900_staticH5.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_staticH10 <- read.csv(file='results/params_studentT100_staticH10.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_staticH10 <- read.csv(file='results/params_studentT300_staticH10.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_staticH10 <- read.csv(file='results/params_studentT500_staticH10.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params700_staticH10 <- read.csv(file='results/params_studentT700_staticH10.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params900_staticH10 <- read.csv(file='results/params_studentT900_staticH10.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_staticH15 <- read.csv(file='results/params_studentT100_staticH15.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_staticH15 <- read.csv(file='results/params_studentT300_staticH15.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_staticH15 <- read.csv(file='results/params_studentT500_staticH15.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params700_staticH15 <- read.csv(file='results/params_studentT700_staticH15.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params900_staticH15 <- read.csv(file='results/params_studentT900_staticH15.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_staticH20 <- read.csv(file='results/params_studentT100_staticH20.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_staticH20 <- read.csv(file='results/params_studentT300_staticH20.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_staticH20 <- read.csv(file='results/params_studentT500_staticH20.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params700_staticH20 <- read.csv(file='results/params_studentT700_staticH20.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params900_staticH20 <- read.csv(file='results/params_studentT900_staticH20.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

################## Dynamic H ACF/CCF ##################
## Comments: 
## Density plot phi 1 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  # geom_density(data=params100, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500, aes(x=phi1, colour='T=500')) +
  geom_density(data=params700, aes(x=phi1, colour='T=700')) +
  geom_density(data=params900, aes(x=phi1, colour='T=900')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
## Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  # geom_density(data=params100, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500, aes(x=phi2, colour='T=500')) +
  geom_density(data=params700, aes(x=phi2, colour='T=700')) +
  geom_density(data=params900, aes(x=phi2, colour='T=900')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

# Comments:
# Density plot phi 3 T=100, T-300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100, aes(x=phi3, colour='T=100')) +
  # geom_density(data=params300, aes(x=phi3, colour='T=300')) +
  # geom_density(data=params500, aes(x=phi3, colour='T=500')) +
  geom_density(data=params700, aes(x=phi3, colour='T=700')) +
  geom_density(data=params900, aes(x=phi3, colour='T=900')) +
  geom_vline(xintercept = 0, linetype = "dashed")

# Comments:
# Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100, aes(x=phi4, colour='T=100')) +
  # geom_density(data=params300, aes(x=phi4, colour='T=300')) +
  # geom_density(data=params500, aes(x=phi4, colour='T=500')) +
  geom_density(data=params700, aes(x=phi4, colour='T=700')) +
  geom_density(data=params900, aes(x=phi4, colour='T=900')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Dynamic H AIC ##################
## Comments: 
# Density plot phi 1 T=100 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicAIC, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_dynamicAIC, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_dynamicAIC, aes(x=phi1, colour='T=500')) +
  geom_density(data=params700_dynamicAIC, aes(x=phi1, colour='T=700')) +
  geom_density(data=params900_dynamicAIC, aes(x=phi1, colour='T=900')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
# Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicAIC, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_dynamicAIC, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_dynamicAIC, aes(x=phi2, colour='T=500')) +
  geom_density(data=params700_dynamicAIC, aes(x=phi2, colour='T=700')) +
  geom_density(data=params900_dynamicAIC, aes(x=phi2, colour='T=900')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

# Comments:
# Density plot phi 3 T=100, T-300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_dynamicAIC, aes(x=phi3, colour='T=100')) +
  geom_density(data=params300_dynamicAIC, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_dynamicAIC, aes(x=phi3, colour='T=500')) +
  geom_density(data=params700_dynamicAIC, aes(x=phi3, colour='T=700')) +
  geom_density(data=params900_dynamicAIC, aes(x=phi3, colour='T=900')) +
  geom_vline(xintercept = 0, linetype = "dashed")

# Comments:
# Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_dynamicAIC, aes(x=phi4, colour='T=100')) +
  geom_density(data=params300_dynamicAIC, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_dynamicAIC, aes(x=phi4, colour='T=500')) +
  geom_density(data=params700_dynamicAIC, aes(x=phi4, colour='T=700')) +
  geom_density(data=params900_dynamicAIC, aes(x=phi4, colour='T=900')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Dynamic H HQ ##################
## Comments: 
## Density plot phi 1 T=100 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicHQ, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_dynamicHQ, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_dynamicHQ, aes(x=phi1, colour='T=500')) +
  geom_density(data=params700_dynamicHQ, aes(x=phi1, colour='T=700')) +
  geom_density(data=params900_dynamicHQ, aes(x=phi1, colour='T=900')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
## Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicHQ, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_dynamicHQ, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_dynamicHQ, aes(x=phi2, colour='T=500')) +
  geom_density(data=params700_dynamicHQ, aes(x=phi2, colour='T=700')) +
  geom_density(data=params900_dynamicHQ, aes(x=phi2, colour='T=900')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

# Comments:
# Density plot phi 3 T=100, T-300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicHQ, aes(x=phi3, colour='T=100')) +
  geom_density(data=params300_dynamicHQ, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_dynamicHQ, aes(x=phi3, colour='T=500')) +
  geom_density(data=params700_dynamicHQ, aes(x=phi3, colour='T=700')) +
  geom_density(data=params900_dynamicHQ, aes(x=phi3, colour='T=900')) +
  geom_vline(xintercept = 0, linetype = "dashed")

# Comments:
# Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicHQ, aes(x=phi4, colour='T=100')) +
  geom_density(data=params300_dynamicHQ, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_dynamicHQ, aes(x=phi4, colour='T=500')) +
  geom_density(data=params700_dynamicHQ, aes(x=phi4, colour='T=700')) +
  geom_density(data=params900_dynamicHQ, aes(x=phi4, colour='T=900')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Dynamic H SC ##################
## Comments:
## Density plot phi 1 T=100 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicSC, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_dynamicSC, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_dynamicSC, aes(x=phi1, colour='T=500')) +
  geom_density(data=params700_dynamicSC, aes(x=phi1, colour='T=700')) +
  geom_density(data=params900_dynamicSC, aes(x=phi1, colour='T=900')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
## Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicSC, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_dynamicSC, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_dynamicSC, aes(x=phi2, colour='T=500')) +
  geom_density(data=params700_dynamicSC, aes(x=phi2, colour='T=700')) +
  geom_density(data=params900_dynamicSC, aes(x=phi2, colour='T=900')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

# Comments:
# Density plot phi 3 T=100, T-300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicSC, aes(x=phi3, colour='T=100')) +
  geom_density(data=params300_dynamicSC, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_dynamicSC, aes(x=phi3, colour='T=500')) +
  geom_density(data=params700_dynamicSC, aes(x=phi3, colour='T=700')) +
  geom_density(data=params900_dynamicSC, aes(x=phi3, colour='T=900')) +
  geom_vline(xintercept = 0, linetype = "dashed")

# Comments:
# Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  geom_density(data=params100_dynamicSC, aes(x=phi4, colour='T=100')) +
  geom_density(data=params300_dynamicSC, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_dynamicSC, aes(x=phi4, colour='T=500')) +
  geom_density(data=params700_dynamicSC, aes(x=phi4, colour='T=700')) +
  geom_density(data=params900_dynamicSC, aes(x=phi4, colour='T=900')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Static H=5 ##################
## Comments: 
ggplot() + 
  geom_density(data=params100_staticH5, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_staticH5, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_staticH5, aes(x=phi1, colour='T=500')) +
  geom_density(data=params700_staticH5, aes(x=phi1, colour='T=700')) +
  geom_density(data=params900_staticH5, aes(x=phi1, colour='T=900')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
ggplot() + 
  geom_density(data=params100_staticH5, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_staticH5, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_staticH5, aes(x=phi2, colour='T=500')) +
  geom_density(data=params700_staticH5, aes(x=phi2, colour='T=700')) +
  geom_density(data=params900_staticH5, aes(x=phi2, colour='T=900')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100, T-300 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH5, aes(x=phi3, colour='T=100')) +
  # geom_density(data=params300_staticH5, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_staticH5, aes(x=phi3, colour='T=500')) +
  geom_density(data=params700_staticH5, aes(x=phi3, colour='T=700')) +
  geom_density(data=params900_staticH5, aes(x=phi3, colour='T=900')) +
  geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH5, aes(x=phi4, colour='T=100')) +
  # geom_density(data=params300_staticH5, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_staticH5, aes(x=phi4, colour='T=500')) +
  geom_density(data=params700_staticH5, aes(x=phi4, colour='T=700')) +
  geom_density(data=params900_staticH5, aes(x=phi4, colour='T=900')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Static H=10 ##################
## Comments: 
ggplot() + 
  geom_density(data=params100_staticH10, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_staticH10, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_staticH10, aes(x=phi1, colour='T=500')) +
  geom_density(data=params700_staticH10, aes(x=phi1, colour='T=700')) +
  geom_density(data=params900_staticH10, aes(x=phi1, colour='T=900')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
## Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  geom_density(data=params100_staticH10, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_staticH10, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_staticH10, aes(x=phi2, colour='T=500')) +
  geom_density(data=params700_staticH10, aes(x=phi2, colour='T=700')) +
  geom_density(data=params900_staticH10, aes(x=phi2, colour='T=900')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100, T-300 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH10, aes(x=phi3, colour='T=100')) +
  # geom_density(data=params300_staticH10, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_staticH10, aes(x=phi3, colour='T=500')) +
  geom_density(data=params700_staticH10, aes(x=phi3, colour='T=700')) +
  geom_density(data=params900_staticH10, aes(x=phi3, colour='T=900')) +
  geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH10, aes(x=phi4, colour='T=100')) +
  # geom_density(data=params300_staticH10, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_staticH10, aes(x=phi4, colour='T=500')) +
  geom_density(data=params700_staticH10, aes(x=phi4, colour='T=700')) +
  geom_density(data=params900_staticH10, aes(x=phi4, colour='T=900')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Static H=15 ##################
## Comments: 
ggplot() + 
  geom_density(data=params100_staticH15, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_staticH15, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_staticH15, aes(x=phi1, colour='T=500')) +
  geom_density(data=params700_staticH15, aes(x=phi1, colour='T=700')) +
  geom_density(data=params900_staticH15, aes(x=phi1, colour='T=900')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
ggplot() + 
  geom_density(data=params100_staticH15, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_staticH15, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_staticH15, aes(x=phi2, colour='T=500')) +
  geom_density(data=params700_staticH15, aes(x=phi2, colour='T=700')) +
  geom_density(data=params900_staticH15, aes(x=phi2, colour='T=900')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH15, aes(x=phi3, colour='T=100')) +
  geom_density(data=params300_staticH15, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_staticH15, aes(x=phi3, colour='T=500')) +
  geom_density(data=params700_staticH15, aes(x=phi3, colour='T=700')) +
  geom_density(data=params900_staticH15, aes(x=phi3, colour='T=900')) +
  geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH15, aes(x=phi4, colour='T=100')) +
  geom_density(data=params300_staticH15, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_staticH15, aes(x=phi4, colour='T=500')) +
  geom_density(data=params700_staticH15, aes(x=phi4, colour='T=700')) +
  geom_density(data=params900_staticH15, aes(x=phi4, colour='T=900')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Static H=20 ##################
## Comments: 
## Density plot phi 1 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  # geom_density(data=params100_staticH20, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_staticH20, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_staticH20, aes(x=phi1, colour='T=500')) +
  geom_density(data=params700_staticH20, aes(x=phi1, colour='T=700')) +
  geom_density(data=params900_staticH20, aes(x=phi1, colour='T=900')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
## Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  # geom_density(data=params100_staticH20, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_staticH20, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_staticH20, aes(x=phi2, colour='T=500')) +
  geom_density(data=params700_staticH20, aes(x=phi2, colour='T=700')) +
  geom_density(data=params900_staticH20, aes(x=phi2, colour='T=900')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100, T=300 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH20, aes(x=phi3, colour='T=100')) +
  # geom_density(data=params300_staticH20, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_staticH20, aes(x=phi3, colour='T=500')) +
  geom_density(data=params700_staticH20, aes(x=phi3, colour='T=700')) +
  geom_density(data=params900_staticH20, aes(x=phi3, colour='T=900')) +
  geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH20, aes(x=phi4, colour='T=100')) +
  # geom_density(data=params300_staticH20, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_staticH20, aes(x=phi4, colour='T=500')) +
  geom_density(data=params700_staticH20, aes(x=phi4, colour='T=700')) +
  geom_density(data=params900_staticH20, aes(x=phi4, colour='T=900')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Comparing H T=100 ##################
## Comments: 
ggplot() + 
  # geom_density(data=params100, aes(x=phi1, colour='H=Dynamic')) +
  geom_density(data=params100_staticH5, aes(x=phi1, colour='H=5')) +
  geom_density(data=params100_staticH10, aes(x=phi1, colour='H=10')) +
  geom_density(data=params100_staticH15, aes(x=phi1, colour='H=15')) +
  # geom_density(data=params100_staticH20, aes(x=phi1, colour='H=20')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

ggplot() + 
  # geom_density(data=params100, aes(x=phi2, colour='H=Dynamic')) +
  geom_density(data=params100_staticH5, aes(x=phi2, colour='H=5')) +
  geom_density(data=params100_staticH10, aes(x=phi2, colour='H=10')) +
  geom_density(data=params100_staticH15, aes(x=phi2, colour='H=15')) +
  # geom_density(data=params100_staticH20, aes(x=phi2, colour='H=20')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")
 
# ggplot() + 
#   geom_density(data=params100, aes(x=phi3, colour='H=Dynamic')) +
#   geom_density(data=params100_staticH5, aes(x=phi3, colour='H=5')) +
#   geom_density(data=params100_staticH10, aes(x=phi3, colour='H=10')) +
#   geom_density(data=params100_staticH15, aes(x=phi3, colour='H=15')) +
#   geom_density(data=params100_staticH20, aes(x=phi3, colour='H=20')) +
#   geom_vline(xintercept = 0.7, linetype = "dashed")

# ggplot() + 
#   geom_density(data=params100, aes(x=phi4, colour='H=Dynamic')) +
#   geom_density(data=params100_staticH5, aes(x=phi4, colour='H=5')) +
#   geom_density(data=params100_staticH10, aes(x=phi4, colour='H=10')) +
#   geom_density(data=params100_staticH15, aes(x=phi4, colour='H=15')) +
#   geom_density(data=params100_staticH20, aes(x=phi4, colour='H=20')) +
#   geom_vline(xintercept = 0.7, linetype = "dashed")

################## Comparing H T=300 ##################
## Comments: 
ggplot() + 
  geom_density(data=params300, aes(x=phi1, colour='H=Dynamic')) +
  geom_density(data=params300_staticH5, aes(x=phi1, colour='H=5')) +
  geom_density(data=params300_staticH10, aes(x=phi1, colour='H=10')) +
  geom_density(data=params300_staticH15, aes(x=phi1, colour='H=15')) +
  geom_density(data=params300_staticH20, aes(x=phi1, colour='H=20')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

ggplot() + 
  geom_density(data=params300, aes(x=phi2, colour='H=Dynamic')) +
  geom_density(data=params300_staticH5, aes(x=phi2, colour='H=5')) +
  geom_density(data=params300_staticH10, aes(x=phi2, colour='H=10')) +
  geom_density(data=params300_staticH15, aes(x=phi2, colour='H=15')) +
  geom_density(data=params300_staticH20, aes(x=phi2, colour='H=20')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

# ggplot() + 
#   geom_density(data=params300, aes(x=phi3, colour='H=Dynamic')) +
#   geom_density(data=params300_staticH5, aes(x=phi3, colour='H=5')) +
#   geom_density(data=params300_staticH10, aes(x=phi3, colour='H=10')) +
#   geom_density(data=params300_staticH15, aes(x=phi3, colour='H=15')) +
#   geom_density(data=params300_staticH20, aes(x=phi3, colour='H=20')) +
#   geom_vline(xintercept = 0.7, linetype = "dashed")

# ggplot() + 
#   geom_density(data=params300, aes(x=phi4, colour='H=Dynamic')) +
#   geom_density(data=params300_staticH5, aes(x=phi4, colour='H=5')) +
#   geom_density(data=params300_staticH10, aes(x=phi4, colour='H=10')) +
#   geom_density(data=params300_staticH15, aes(x=phi4, colour='H=15')) +
#   geom_density(data=params300_staticH20, aes(x=phi4, colour='H=20')) +
#   geom_vline(xintercept = 0.7, linetype = "dashed")

################## Comparing H T=500 ##################
## Comments: 
ggplot() + 
  geom_density(data=params500, aes(x=phi1, colour='H=Dynamic')) +
  geom_density(data=params500_staticH5, aes(x=phi1, colour='H=5')) +
  geom_density(data=params500_staticH10, aes(x=phi1, colour='H=10')) +
  geom_density(data=params500_staticH15, aes(x=phi1, colour='H=15')) +
  geom_density(data=params500_staticH20, aes(x=phi1, colour='H=20')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

ggplot() + 
  geom_density(data=params500, aes(x=phi2, colour='H=Dynamic')) +
  geom_density(data=params500_staticH5, aes(x=phi2, colour='H=5')) +
  geom_density(data=params500_staticH10, aes(x=phi2, colour='H=10')) +
  geom_density(data=params500_staticH15, aes(x=phi2, colour='H=15')) +
  geom_density(data=params500_staticH20, aes(x=phi2, colour='H=20')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

ggplot() + 
  # geom_density(data=params500, aes(x=phi3, colour='H=Dynamic')) +
  geom_density(data=params500_staticH5, aes(x=phi3, colour='H=5')) +
  geom_density(data=params500_staticH10, aes(x=phi3, colour='H=10')) +
  geom_density(data=params500_staticH15, aes(x=phi3, colour='H=15')) +
  geom_density(data=params500_staticH20, aes(x=phi3, colour='H=20')) +
  geom_vline(xintercept = 0, linetype = "dashed")

ggplot() + 
  # geom_density(data=params500, aes(x=phi4, colour='H=Dynamic')) +
  geom_density(data=params500_staticH5, aes(x=phi4, colour='H=5')) +
  geom_density(data=params500_staticH10, aes(x=phi4, colour='H=10')) +
  geom_density(data=params500_staticH15, aes(x=phi4, colour='H=15')) +
  geom_density(data=params500_staticH20, aes(x=phi4, colour='H=20')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Comparing H T=700 ##################
## Comments: 
ggplot() + 
  geom_density(data=params700, aes(x=phi1, colour='H=Dynamic acf/ccf')) +
  # geom_density(data=params700_dynamicAIC, aes(x=phi1, colour='H=Dynamic AIC')) +
  # geom_density(data=params700_dynamicHQ, aes(x=phi1, colour='H=Dynamic HQ')) +
  # geom_density(data=params700_dynamicSC, aes(x=phi1, colour='H=Dynamic SC')) +
  geom_density(data=params700_staticH5, aes(x=phi1, colour='H=5')) +
  geom_density(data=params700_staticH10, aes(x=phi1, colour='H=10')) +
  geom_density(data=params700_staticH15, aes(x=phi1, colour='H=15')) +
  geom_density(data=params700_staticH20, aes(x=phi1, colour='H=20')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

ggplot() + 
  geom_density(data=params700, aes(x=phi2, colour='H=Dynamic acf/ccf')) +
  # geom_density(data=params700_dynamicAIC, aes(x=phi2, colour='H=Dynamic AIC')) +
  # geom_density(data=params700_dynamicHQ, aes(x=phi2, colour='H=Dynamic HQ')) +
  # geom_density(data=params700_dynamicSC, aes(x=phi2, colour='H=Dynamic SC')) +
  geom_density(data=params700_staticH5, aes(x=phi2, colour='H=5')) +
  geom_density(data=params700_staticH10, aes(x=phi2, colour='H=10')) +
  geom_density(data=params700_staticH15, aes(x=phi2, colour='H=15')) +
  geom_density(data=params700_staticH20, aes(x=phi2, colour='H=20')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

ggplot() + 
  geom_density(data=params700, aes(x=phi3, colour='H=Dynamic acf/ccf')) +
  geom_density(data=params700_dynamicAIC, aes(x=phi3, colour='H=Dynamic AIC')) +
  geom_density(data=params700_dynamicHQ, aes(x=phi3, colour='H=Dynamic HQ')) +
  geom_density(data=params700_dynamicSC, aes(x=phi3, colour='H=Dynamic SC')) +
  geom_density(data=params700_staticH5, aes(x=phi3, colour='H=5')) +
  geom_density(data=params700_staticH10, aes(x=phi3, colour='H=10')) +
  geom_density(data=params700_staticH15, aes(x=phi3, colour='H=15')) +
  geom_density(data=params700_staticH20, aes(x=phi3, colour='H=20')) +
  geom_vline(xintercept = 0, linetype = "dashed")

ggplot() + 
  geom_density(data=params700, aes(x=phi4, colour='H=Dynamic acf/ccf')) +
  geom_density(data=params700_dynamicAIC, aes(x=phi4, colour='H=Dynamic AIC')) +
  geom_density(data=params700_dynamicHQ, aes(x=phi4, colour='H=Dynamic HQ')) +
  geom_density(data=params700_dynamicSC, aes(x=phi4, colour='H=Dynamic SC')) +
  geom_density(data=params700_staticH5, aes(x=phi4, colour='H=5')) +
  geom_density(data=params700_staticH10, aes(x=phi4, colour='H=10')) +
  geom_density(data=params700_staticH15, aes(x=phi4, colour='H=15')) +
  geom_density(data=params700_staticH20, aes(x=phi4, colour='H=20')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Comparing H T=900 ##################
## Comments: 
ggplot() + 
  geom_density(data=params900, aes(x=phi1, colour='H=Dynamic acf/ccf')) +
  # geom_density(data=params900_dynamicAIC, aes(x=phi1, colour='H=Dynamic AIC')) +
  # geom_density(data=params900_dynamicHQ, aes(x=phi1, colour='H=Dynamic HQ')) +
  # geom_density(data=params900_dynamicSC, aes(x=phi1, colour='H=Dynamic SC')) +
  geom_density(data=params900_staticH5, aes(x=phi1, colour='H=5')) +
  geom_density(data=params900_staticH10, aes(x=phi1, colour='H=10')) +
  geom_density(data=params900_staticH15, aes(x=phi1, colour='H=15')) +
  geom_density(data=params900_staticH20, aes(x=phi1, colour='H=20')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

ggplot() + 
  geom_density(data=params900, aes(x=phi2, colour='H=Dynamic')) +
  # geom_density(data=params900_dynamicAIC, aes(x=phi2, colour='H=Dynamic AIC')) +
  # geom_density(data=params900_dynamicHQ, aes(x=phi2, colour='H=Dynamic HQ')) +
  # geom_density(data=params900_dynamicSC, aes(x=phi2, colour='H=Dynamic SC')) +
  geom_density(data=params900_staticH5, aes(x=phi2, colour='H=5')) +
  geom_density(data=params900_staticH10, aes(x=phi2, colour='H=10')) +
  geom_density(data=params900_staticH15, aes(x=phi2, colour='H=15')) +
  geom_density(data=params900_staticH20, aes(x=phi2, colour='H=20')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

ggplot() + 
  geom_density(data=params900, aes(x=phi3, colour='H=Dynamic')) +
  geom_density(data=params900_dynamicAIC, aes(x=phi3, colour='H=Dynamic AIC')) +
  geom_density(data=params900_dynamicHQ, aes(x=phi3, colour='H=Dynamic HQ')) +
  geom_density(data=params900_dynamicSC, aes(x=phi3, colour='H=Dynamic SC')) +
  geom_density(data=params900_staticH5, aes(x=phi3, colour='H=5')) +
  geom_density(data=params900_staticH10, aes(x=phi3, colour='H=10')) +
  geom_density(data=params900_staticH15, aes(x=phi3, colour='H=15')) +
  geom_density(data=params900_staticH20, aes(x=phi3, colour='H=20')) +
  geom_vline(xintercept = 0, linetype = "dashed")

ggplot() + 
  geom_density(data=params900, aes(x=phi4, colour='H=Dynamic')) +
  geom_density(data=params900_dynamicAIC, aes(x=phi4, colour='H=Dynamic AIC')) +
  geom_density(data=params900_dynamicHQ, aes(x=phi4, colour='H=Dynamic HQ')) +
  geom_density(data=params900_dynamicSC, aes(x=phi4, colour='H=Dynamic SC')) +
  geom_density(data=params900_staticH5, aes(x=phi4, colour='H=5')) +
  geom_density(data=params900_staticH10, aes(x=phi4, colour='H=10')) +
  geom_density(data=params900_staticH15, aes(x=phi4, colour='H=15')) +
  geom_density(data=params900_staticH20, aes(x=phi4, colour='H=20')) +
  geom_vline(xintercept = 2, linetype = "dashed")


all_dfs <- list(
  c(100, "Dynamic H: acf/ccf", params100),
  c(300, "Dynamic H: acf/ccf", params300),
  c(500, "Dynamic H: acf/ccf", params500),
  c(700, "Dynamic H: acf/ccf", params700),
  c(900, "Dynamic H: acf/ccf", params900),
  c(100, "Dynamic H: AIC", params100_dynamicAIC),
  c(300, "Dynamic H: AIC", params300_dynamicAIC),
  c(500, "Dynamic H: AIC", params500_dynamicAIC),
  c(700, "Dynamic H: AIC", params700_dynamicAIC),
  c(900, "Dynamic H: AIC", params900_dynamicAIC),
  c(100, "Dynamic H: HQ", params100_dynamicHQ),
  c(300, "Dynamic H: HQ", params300_dynamicHQ),
  c(500, "Dynamic H: HQ", params500_dynamicHQ),
  c(700, "Dynamic H: HQ", params700_dynamicHQ),
  c(900, "Dynamic H: HQ", params900_dynamicHQ),
  c(100, "Dynamic H: SC", params100_dynamicSC),
  c(300, "Dynamic H: SC", params300_dynamicSC),
  c(500, "Dynamic H: SC", params500_dynamicSC),
  c(700, "Dynamic H: SC", params700_dynamicSC),
  c(900, "Dynamic H: SC", params900_dynamicSC),
  c(100, "Static H: 5", params100_staticH5),
  c(300, "Static H: 5", params300_staticH5),
  c(500, "Static H: 5", params500_staticH5),
  c(700, "Static H: 5", params700_staticH5),
  c(900, "Static H: 5", params900_staticH5),
  c(100, "Static H: 10", params100_staticH10),
  c(300, "Static H: 10", params300_staticH10),
  c(500, "Static H: 10", params500_staticH10),
  c(700, "Static H: 10", params700_staticH10),
  c(900, "Static H: 10", params900_staticH10),
  c(100, "Static H: 15", params100_staticH15),
  c(300, "Static H: 15", params300_staticH15),
  c(500, "Static H: 15", params500_staticH15),
  c(700, "Static H: 15", params700_staticH15),
  c(900, "Static H: 15", params900_staticH15),
  c(100, "Static H: 20", params100_staticH20),
  c(300, "Static H: 20", params300_staticH20),
  c(500, "Static H: 20", params500_staticH20),
  c(700, "Static H: 20", params700_staticH20),
  c(900, "Static H: 20", params900_staticH20)
)

############### GET STATISTICS ###############
statistics_df <- data.frame(matrix(ncol=6,nrow=0, dimnames=list(NULL, c("Phi", "T", "H", "min", "max", "Var"))))

for (x in all_dfs) {
  # Add phi1 data
  phi1_data <-  data.frame(c("phi1", x[1], x[2], min(x$phi1), max(x$phi1), var(x$phi1)))
  colnames(phi1_data) <- colnames(statistics_df)
  statistics_df <- rbind(statistics_df, phi1_data)
  
  # Add phi2 data
  phi2_data <-  data.frame(c("phi2", x[1], x[2], min(x$phi2), max(x$phi2), var(x$phi2)))
  colnames(phi2_data) <- colnames(statistics_df)
  statistics_df <- rbind(statistics_df, phi2_data)
  
  # Add phi3 data
  phi3_data <-  data.frame(c("phi3", x[1], x[2], min(x$phi3), max(x$phi3), var(x$phi3)))
  colnames(phi3_data) <- colnames(statistics_df)
  statistics_df <- rbind(statistics_df, phi3_data)

  # Add phi4 data
  phi4_data <-  data.frame(c("phi4", x[1], x[2], min(x$phi4), max(x$phi4), var(x$phi4)))
  colnames(phi4_data) <- colnames(statistics_df)
  statistics_df <- rbind(statistics_df, phi4_data)
}

is.num <- sapply(statistics_df, is.numeric)
statistics_df[is.num] <- lapply(statistics_df[is.num], round, 3)

write.table(format(statistics_df[statistics_df$Phi == 'phi1', ], scientific = FALSE), file="results/statistics_phi1_table.csv", sep = ',', row.names = FALSE)
write.table(format(statistics_df[statistics_df$Phi == 'phi2', ], scientific = FALSE), file="results/statistics_phi2_table.csv", sep = ',', row.names = FALSE)
write.table(format(statistics_df[statistics_df$Phi == 'phi3', ], scientific = FALSE), file="results/statistics_phi3_table.csv", sep = ',', row.names = FALSE)
write.table(format(statistics_df[statistics_df$Phi == 'phi4', ], scientific = FALSE), file="results/statistics_phi4_table.csv", sep = ',', row.names = FALSE)
