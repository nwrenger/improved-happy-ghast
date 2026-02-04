execute if entity @s[tag=!improved_happy_ghast.toggled.speed,tag=!improved_happy_ghast.fast] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/cookie,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/speed/fast

execute if entity @s[tag=!improved_happy_ghast.toggled.speed,tag=improved_happy_ghast.fast] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/cookie,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/speed/base

tag @s remove improved_happy_ghast.toggled.speed
