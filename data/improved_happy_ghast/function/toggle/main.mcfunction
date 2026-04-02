# Revoke advancement
advancement revoke @s only improved_happy_ghast:player_interaction

# Mark player
tag @s add improved_happy_ghast.player

# Switch all toggles
execute positioned ~ ~-1 ~ \
    as @e[type=minecraft:happy_ghast,distance=..10,sort=nearest,limit=1] \
    at @s \
    run function improved_happy_ghast:toggle/all

# Free player
tag @s remove improved_happy_ghast.player
