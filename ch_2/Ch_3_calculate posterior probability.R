### - Calculate posterior probability

# sample, water = 6, land = 3, total = 9


sample <- c('W','W','W','L','L','W','W','L','W')
W <- sum(sample == 'W')
L <- sum(sample == 'L')
N = W + L
# Calculate likelihood (probability of data)

# formula: Pr(W,L|p) = ((W+L)!/W!L!)p^W(1-p)^N-W
# can be written as Pr(W,L|p) = (N!/W)!p^W(1-p)^N-W

# When p =0.5
d1 = dbinom (W,size=N, p=0.5)
# When p =0.7
d2 = dbinom (W,size=N, p=0.7)

# Posterior formula

# Pr(p|D) = Pr(D|p)* Pr(p) / Pr(D)
# Pr(p|W+L) = Pr(W+L|p) * Pr(p) / Pr(W+L)


post_dist_d1 = d1*1/(d1+d2)
post_dist_d2 = d2*1/(d1+d2)
