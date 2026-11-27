# A pending summon still owns the shared lookup result.
execute if data storage improved_happy_ghast:tmp {summon_pending:1b} \
    run return run title @s actionbar {"text":"Another Happy Ghast summon is in progress. Try again shortly!","color":"red"}

# Find record by query.player => tmp.result = {player,ghast,dim,x,z}
data modify storage improved_happy_ghast:tmp query.player set from entity @s UUID
function improved_happy_ghast:db/player/find

# If not found, bail with cleanup
execute unless data storage improved_happy_ghast:tmp result \
    run return \
    run data remove storage improved_happy_ghast:tmp result

# Check if feature is disabled
execute if data storage improved_happy_ghast:config {features: {summoning_back: {enabled: false}}} \
    run return \
    run function improved_happy_ghast:summon/feature_disabled

# Check for max distance (-1 = unlimited)
data modify storage improved_happy_ghast:tmp result.max_distance set from storage improved_happy_ghast:config features.summoning_back.max_distance
execute if data storage improved_happy_ghast:tmp result.max_distance \
    unless data storage improved_happy_ghast:tmp result{max_distance:-1} \
    run function improved_happy_ghast:summon/check_range with storage improved_happy_ghast:tmp result
execute unless data storage improved_happy_ghast:tmp result run return fail

# Check for enough space
execute unless predicate improved_happy_ghast:enough_space \
    run return \
    run function improved_happy_ghast:summon/too_small

# Forceload tp chunk
function improved_happy_ghast:summon/forceload with storage improved_happy_ghast:tmp result

# Wait for chunk loading
execute store success storage improved_happy_ghast:tmp summon_pending byte 1 \
    run schedule function improved_happy_ghast:summon/on_loaded_chunk 5t append
