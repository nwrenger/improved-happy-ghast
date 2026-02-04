execute if entity @s[tag=!improved_happy_ghast.toggled.size,tag=!improved_happy_ghast.smol] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/brown_mushroom,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/size/smol

execute if entity @s[tag=!improved_happy_ghast.toggled.size,tag=improved_happy_ghast.smol] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/brown_mushroom,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/size/base

tag @s remove improved_happy_ghast.toggled.size
