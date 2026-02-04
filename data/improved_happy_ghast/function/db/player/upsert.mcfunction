# Requires: tmp.p = {player,ghast,dim,x,z}, clears it

# Ensure list exists
execute unless data storage improved_happy_ghast:db players run data modify storage improved_happy_ghast:db players set value []

# found flag (byte)
data modify storage improved_happy_ghast:tmp found set value 0b

# Append sentinel record
data modify storage improved_happy_ghast:db players append value {__sentinel:1b}

# Rotate-scan and update if match
function improved_happy_ghast:db/player/_upsert_loop with storage improved_happy_ghast:tmp p

# If not found, append new record
execute if data storage improved_happy_ghast:tmp {found:0b} run data modify storage improved_happy_ghast:db players append from storage improved_happy_ghast:tmp p

# Remove sentinel at front
data remove storage improved_happy_ghast:db players[0]

# Clear tmp
data remove storage improved_happy_ghast:tmp cur
data remove storage improved_happy_ghast:tmp p
data remove storage improved_happy_ghast:tmp found
