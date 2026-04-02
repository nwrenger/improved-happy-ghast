# Requires: tmp.query.player, clears it
# Removes the array entry

# Ensure list exists
execute unless data storage improved_happy_ghast:db players run return fail

# Append sentinel
data modify storage improved_happy_ghast:db players append value {__sentinel:1b}

# Start remove loop
function improved_happy_ghast:db/player/_remove_loop with storage improved_happy_ghast:tmp query

# Remove sentinel at front
data remove storage improved_happy_ghast:db players[0]

# Clear tmp
data remove storage improved_happy_ghast:tmp cur
data remove storage improved_happy_ghast:tmp query
