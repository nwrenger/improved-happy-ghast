execute if entity @s[tag=!improved_happy_ghast.toggled.wandering,tag=!improved_happy_ghast.noai] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/brush,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/wandering/noai

execute if entity @s[tag=!improved_happy_ghast.toggled.wandering,tag=improved_happy_ghast.noai] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/brush,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/wandering/base

tag @s remove improved_happy_ghast.toggled.wandering
