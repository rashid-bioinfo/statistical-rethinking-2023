### - Grid Approximation

# Define grid
p_grid <- seq(from=0, to=1, length.out=20)

# define prior

prior <- rep(1,20) 

# Compute likelihood at each value in the grid for water=6, land=3

likelihood <- dbinom(6, size=9, p_grid)
sum(likelihood)
# Calculate product of likelihood and prior
unstd.posterior = likelihood * prior

# Standardized the posterior, so it sums to 1

std.posterior = unstd.posterior / sum(unstd.posterior)
sum(std.posterior)

# Draw plot
plot(p_grid, std.posterior, type="b", 
     xlab="Probability of Water", ylab="Posterior Probability")
mtext("20 points")

# to replicate different points
prior <- ifelse(p_grid<0.5, 0, 1)
prior <- exp(-5*abs(p_grid - 0.5))
