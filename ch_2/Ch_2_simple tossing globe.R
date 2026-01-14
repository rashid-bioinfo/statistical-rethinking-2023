### - Simple tossing globe

# Define the function for tossing the globe

sim_globe <- function(N=9, p=0.7){
  sample(c('W','L'), size=N, prob=c(p,1-p), replace = TRUE)
}
# Run the simulation
sim_globe()

# Replicate the simulation
replicate(sim_globe(N=9,p=0.7), n=10)
replicate(sim_globe(N=9,p=0.5), n=10)

# Testing the simulation on extreme settings

sim_globe(N=11, p=1) # when whole globe covered with water
sim_globe(N=11, p=0) # when whole globe covered with land

sum(sim_globe(p=0.5, N=1e4) == 'W')/1e4
