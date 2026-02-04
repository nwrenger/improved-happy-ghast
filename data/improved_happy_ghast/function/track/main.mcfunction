execute unless data storage improved_happy_ghast:db players \
    run return \
    run schedule function improved_happy_ghast:track/main 1s replace

# Sentinel marks end of one full rotation
data modify storage improved_happy_ghast:db players append value {__sentinel:1b}

function improved_happy_ghast:track/_loop

# Sentinel now at front
data remove storage improved_happy_ghast:db players[0]

# Clear tmp
data remove storage improved_happy_ghast:tmp cur
data remove storage improved_happy_ghast:tmp query

# Run again in 1s
schedule function improved_happy_ghast:track/main 1s replace
