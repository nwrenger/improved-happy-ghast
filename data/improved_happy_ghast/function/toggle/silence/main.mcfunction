execute if entity @s[tag=!improved_happy_ghast.toggled.silence,tag=!improved_happy_ghast.silent] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/honey_bottle,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/silence/silent

execute if entity @s[tag=!improved_happy_ghast.toggled.silence,tag=improved_happy_ghast.silent] \
    if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/honey_bottle,distance=..10,sort=nearest,limit=1] \
    run function improved_happy_ghast:toggle/silence/base

tag @s remove improved_happy_ghast.toggled.silence
