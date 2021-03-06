setwd("~/Documents/master-thesis-R")
library(ggplot2)

params100 <- read.csv(file='results/params_studentT100.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300 <- read.csv(file='results/params_studentT300.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500 <- read.csv(file='results/params_studentT500.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_staticH5 <- read.csv(file='results/params_studentT100_staticH5.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_staticH5 <- read.csv(file='results/params_studentT300_staticH5.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_staticH5 <- read.csv(file='results/params_studentT500_staticH5.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_staticH10 <- read.csv(file='results/params_studentT100_staticH10.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_staticH10 <- read.csv(file='results/params_studentT300_staticH10.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_staticH10 <- read.csv(file='results/params_studentT500_staticH10.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_staticH15 <- read.csv(file='results/params_studentT100_staticH15.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_staticH15 <- read.csv(file='results/params_studentT300_staticH15.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_staticH15 <- read.csv(file='results/params_studentT500_staticH15.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

params100_staticH20 <- read.csv(file='results/params_studentT100_staticH20.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params300_staticH20 <- read.csv(file='results/params_studentT300_staticH20.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))
params500_staticH20 <- read.csv(file='results/params_studentT500_staticH20.csv', header=FALSE, col.names=c("phi1", "phi2", "phi3", "phi4", "converge"))

################## Dynamic H ACF/CCF ##################
## Comments: 
## Density plot phi 1 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  # geom_density(data=params100, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500, aes(x=phi1, colour='T=500')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
## Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  # geom_density(data=params100, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500, aes(x=phi2, colour='T=500')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100, T-300, T=500 does not work, no good convergence, weird values 6000+
# ggplot() + 
#   geom_density(data=params100, aes(x=phi3, colour='T=100')) +
#   geom_density(data=params300, aes(x=phi3, colour='T=300')) +
#   geom_density(data=params500, aes(x=phi3, colour='T=500')) +
#   geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
# ggplot() + 
#   geom_density(data=params100, aes(x=phi4, colour='T=100')) +
#   geom_density(data=params300, aes(x=phi4, colour='T=300')) +
#   geom_density(data=params500, aes(x=phi4, colour='T=500')) +
#   geom_vline(xintercept = 2, linetype = "dashed")

################## Static H=5 ##################
## Comments: 
ggplot() + 
  geom_density(data=params100_staticH5, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_staticH5, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_staticH5, aes(x=phi1, colour='T=500')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
ggplot() + 
  geom_density(data=params100_staticH5, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_staticH5, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_staticH5, aes(x=phi2, colour='T=500')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100, T-300 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH5, aes(x=phi3, colour='T=100')) +
  # geom_density(data=params300_staticH5, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_staticH5, aes(x=phi3, colour='T=500')) +
  geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH5, aes(x=phi4, colour='T=100')) +
  # geom_density(data=params300_staticH5, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_staticH5, aes(x=phi4, colour='T=500')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Static H=10 ##################
## Comments: 
ggplot() + 
  geom_density(data=params100_staticH10, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_staticH10, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_staticH10, aes(x=phi1, colour='T=500')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
## Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  geom_density(data=params100_staticH10, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_staticH10, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_staticH10, aes(x=phi2, colour='T=500')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100, T-300 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH10, aes(x=phi3, colour='T=100')) +
  # geom_density(data=params300_staticH10, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_staticH10, aes(x=phi3, colour='T=500')) +
  geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH10, aes(x=phi4, colour='T=100')) +
  # geom_density(data=params300_staticH10, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_staticH10, aes(x=phi4, colour='T=500')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Static H=15 ##################
## Comments: 
ggplot() + 
  geom_density(data=params100_staticH15, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_staticH15, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_staticH15, aes(x=phi1, colour='T=500')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
ggplot() + 
  geom_density(data=params100_staticH15, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_staticH15, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_staticH15, aes(x=phi2, colour='T=500')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH15, aes(x=phi3, colour='T=100')) +
  geom_density(data=params300_staticH15, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_staticH15, aes(x=phi3, colour='T=500')) +
  geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300, T=500 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH15, aes(x=phi4, colour='T=100')) +
  geom_density(data=params300_staticH15, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_staticH15, aes(x=phi4, colour='T=500')) +
  geom_vline(xintercept = 2, linetype = "dashed")

################## Static H=20 ##################
## Comments: 
## Density plot phi 1 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  # geom_density(data=params100_staticH20, aes(x=phi1, colour='T=100')) +
  geom_density(data=params300_staticH20, aes(x=phi1, colour='T=300')) +
  geom_density(data=params500_staticH20, aes(x=phi1, colour='T=500')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

## Comments: 
## Density plot phi 2 T=100 does not work, no good convergence, weird values 6000+
ggplot() + 
  # geom_density(data=params100_staticH20, aes(x=phi2, colour='T=100')) +
  geom_density(data=params300_staticH20, aes(x=phi2, colour='T=300')) +
  geom_density(data=params500_staticH20, aes(x=phi2, colour='T=500')) +
  geom_vline(xintercept = -1.3, linetype = "dashed")

## Comments: 
## Density plot phi 3 T=100, T=300 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH20, aes(x=phi3, colour='T=100')) +
  # geom_density(data=params300_staticH20, aes(x=phi3, colour='T=300')) +
  geom_density(data=params500_staticH20, aes(x=phi3, colour='T=500')) +
  geom_vline(xintercept = 0, linetype = "dashed")

## Comments: 
## Density plot phi 4 T=100, T=300 does not work, no good convergence, weird values 6000+
ggplot() +
  # geom_density(data=params100_staticH20, aes(x=phi4, colour='T=100')) +
  # geom_density(data=params300_staticH20, aes(x=phi4, colour='T=300')) +
  geom_density(data=params500_staticH20, aes(x=phi4, colour='T=500')) +
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

################## Comparing H T=300 ##################
## Comments: 
ggplot() + 
  geom_density(data=params300, aes(x=phi1, colour='H=Dynamic')) +
  geom_density(data=params300_staticH5, aes(x=phi1, colour='H=5')) +
  geom_density(data=params300_staticH10, aes(x=phi1, colour='H=10')) +
  geom_density(data=params300_staticH15, aes(x=phi1, colour='H=15')) +
  geom_density(data=params300_staticH20, aes(x=phi1, colour='H=20')) +
  geom_vline(xintercept = 0.7, linetype = "dashed")

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







