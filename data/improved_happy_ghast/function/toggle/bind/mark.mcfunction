# Mark as bound

# Prepare tmp
data modify storage improved_happy_ghast:tmp bound set value true

# Modify current goat horn
item modify entity @a[tag=improved_happy_ghast.player,distance=..10,sort=nearest,limit=1] weapon.mainhand improved_happy_ghast:bound

# Clean tmp
data remove storage improved_happy_ghast:tmp bound

# Key: player UUID
data modify storage improved_happy_ghast:tmp p.player set from entity @a[tag=improved_happy_ghast.player,distance=..10,sort=nearest,limit=1] UUID

# Choose the ghast to bind: nearest bound one (adjust selector if you want)
data modify storage improved_happy_ghast:tmp p.ghast set from entity @s UUID

# Set dimension
execute if dimension minecraft:overworld \
    run data modify storage improved_happy_ghast:tmp p.dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether \
    run data modify storage improved_happy_ghast:tmp p.dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end \
    run data modify storage improved_happy_ghast:tmp p.dim set value "minecraft:the_end"

# Last-known X/Z
execute store result storage improved_happy_ghast:tmp p.x double 1 \
    run data get entity @s Pos[0]
execute store result storage improved_happy_ghast:tmp p.z double 1 \
    run data get entity @s Pos[2]

# Upsert into DB (update if player exists; else insert)
function improved_happy_ghast:db/player/upsert

# Mark as toggled
tag @s add improved_happy_ghast.toggled.bind

# Show use
function improved_happy_ghast:toggle/bind/use
