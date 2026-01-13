# Drawing marbles out of the bag containing blue (B) and white (W) marbles
# proportion of blue marbles = p
# ways D can be produced

# Conjectures - Ways to produce: B   W   B  
# W W W W                        0 x 4 x 0 = 0
# B W W W                        1 x 3 x 1 = 3
# B B W W                        2 x 2 x 2 = 8
# B B B W                        3 x 1 x 3 = 9
# B B B B                        4 x 0 x 4 = 0

# ways to produce BWB
ways <- c(0,3,8,9,0)
ways
# to calculate plausibilities (probabilities) 
prob <- ways/sum(ways)
prob
