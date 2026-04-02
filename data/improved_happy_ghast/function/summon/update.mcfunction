# Make sure ghast exists
$execute unless entity @e[nbt={UUID:$(ghast)},limit=1] run return fail

# Store player and ghast UUIDs
$data modify storage improved_happy_ghast:tmp p merge value {player:$(player),ghast:$(ghast)}

# Set dimension
$execute as @e[nbt={UUID:$(ghast)},limit=1] \
    if dimension minecraft:overworld \
    run data modify storage improved_happy_ghast:tmp p.dim set value "minecraft:overworld"
$execute as @e[nbt={UUID:$(ghast)},limit=1] \
    if dimension minecraft:the_nether \
    run data modify storage improved_happy_ghast:tmp p.dim set value "minecraft:the_nether"
$execute as @e[nbt={UUID:$(ghast)},limit=1] \
    if dimension minecraft:the_end \
    run data modify storage improved_happy_ghast:tmp p.dim set value "minecraft:the_end"

# Last-known X/Z
$execute store result storage improved_happy_ghast:tmp p.x double 1 \
    run data get entity @e[nbt={UUID:$(ghast)},limit=1] Pos[0]
$execute store result storage improved_happy_ghast:tmp p.z double 1 \
    run data get entity @e[nbt={UUID:$(ghast)},limit=1] Pos[2]

# Upsert into DB (update if player exists; else insert)
function improved_happy_ghast:db/player/upsert
