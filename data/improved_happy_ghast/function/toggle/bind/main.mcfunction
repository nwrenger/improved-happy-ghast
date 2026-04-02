execute if entity @s[tag=!improved_happy_ghast.toggled.bind] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/bound_goat_horn,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/bind/base

execute if entity @s[tag=!improved_happy_ghast.toggled.bind] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/goat_horn,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/bind/mark

tag @s remove improved_happy_ghast.toggled.bind
