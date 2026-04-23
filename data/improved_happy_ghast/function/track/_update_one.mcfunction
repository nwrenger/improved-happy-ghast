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

# Notify the owner only when this ghast lost HP and the owner is not riding any happy ghast
$execute if entity @a[nbt={UUID:$(player)},predicate=!improved_happy_ghast:riding_ghast] \
    if function improved_happy_ghast:track/check_hurt \
    as @a[nbt={UUID:$(player)}] \
    run function improved_happy_ghast:notify/hurt
