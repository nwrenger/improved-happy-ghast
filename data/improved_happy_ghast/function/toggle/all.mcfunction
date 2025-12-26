# Toggle size
execute if entity @s[tag=!improved_happy_ghast.toggled.size,tag=!improved_happy_ghast.smol] if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/brown_mushroom,distance=..10,sort=nearest,limit=1] run function improved_happy_ghast:toggle/size/smol
execute if entity @s[tag=!improved_happy_ghast.toggled.size,tag=improved_happy_ghast.smol] if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/brown_mushroom,distance=..10,sort=nearest,limit=1] run function improved_happy_ghast:toggle/size/base
tag @s remove improved_happy_ghast.toggled.size

# Toggle speed
execute if entity @s[tag=!improved_happy_ghast.toggled.speed,tag=!improved_happy_ghast.fast] if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/sugar,distance=..10,sort=nearest,limit=1] run function improved_happy_ghast:toggle/speed/fast
execute if entity @s[tag=!improved_happy_ghast.toggled.speed,tag=improved_happy_ghast.fast] if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/sugar,distance=..10,sort=nearest,limit=1] run function improved_happy_ghast:toggle/speed/base
tag @s remove improved_happy_ghast.toggled.speed

# Toggle wandering
execute if entity @s[tag=!improved_happy_ghast.toggled.wandering,tag=!improved_happy_ghast.noai] if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/brush,distance=..10,sort=nearest,limit=1] run function improved_happy_ghast:toggle/wandering/noai
execute if entity @s[tag=!improved_happy_ghast.toggled.wandering,tag=improved_happy_ghast.noai] if entity @a[tag=improved_happy_ghast.player,predicate=improved_happy_ghast:hold/brush,distance=..10,sort=nearest,limit=1] run function improved_happy_ghast:toggle/wandering/base
tag @s remove improved_happy_ghast.toggled.wandering
