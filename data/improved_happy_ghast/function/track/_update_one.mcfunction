# Update current record (tmp.cur) in-place.

# Set dimension
execute if dimension minecraft:overworld \
    run data modify storage improved_happy_ghast:tmp cur.dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether \
    run data modify storage improved_happy_ghast:tmp cur.dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end \
    run data modify storage improved_happy_ghast:tmp cur.dim set value "minecraft:the_end"

# Last-known X/Z
execute store result storage improved_happy_ghast:tmp cur.x double 1 \
    run data get entity @s Pos[0]
execute store result storage improved_happy_ghast:tmp cur.z double 1 \
    run data get entity @s Pos[2]
