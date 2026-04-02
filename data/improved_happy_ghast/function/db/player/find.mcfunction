# Requires: tmp.query.player, clears it
# Produces: tmp.result (compound) if found

# Ensure list exists
execute unless data storage improved_happy_ghast:db players run return fail

data modify storage improved_happy_ghast:tmp found set value 0b

# Append sentinel
data modify storage improved_happy_ghast:db players append value {__sentinel:1b}

function improved_happy_ghast:db/player/_find_loop with storage improved_happy_ghast:tmp query

# Remove sentinel at front
data remove storage improved_happy_ghast:db players[0]

# Clear tmp
data remove storage improved_happy_ghast:tmp cur
data remove storage improved_happy_ghast:tmp query
data remove storage improved_happy_ghast:tmp found
