# Find record by query.player => tmp.result = {player,ghast,dim,x,z}
data modify storage improved_happy_ghast:tmp query.player set from entity @s UUID
function improved_happy_ghast:db/player/find

# If not found, bail with cleanup
execute unless data storage improved_happy_ghast:tmp result \
    run return \
    run data remove storage improved_happy_ghast:tmp result

# Check for enough space
execute unless predicate improved_happy_ghast:enough_space \
    run function improved_happy_ghast:summon/too_small

# Forceload tp chunk
function improved_happy_ghast:summon/forceload with storage improved_happy_ghast:tmp result

# Wait for chunk loading
schedule function improved_happy_ghast:summon/on_loaded_chunk 5t append
