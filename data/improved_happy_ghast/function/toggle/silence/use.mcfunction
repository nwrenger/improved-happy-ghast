# Remove one honey bottle and return one glass bottle
execute as @a[tag=improved_happy_ghast.player,gamemode=!creative,distance=..10,sort=nearest,limit=1] run item modify entity @s weapon.mainhand improved_happy_ghast:decrement
execute as @a[tag=improved_happy_ghast.player,gamemode=!creative,distance=..10,sort=nearest,limit=1] run give @s minecraft:glass_bottle 1

# Fx
playsound minecraft:item.honey_bottle.drink player @a[distance=..10] ~ ~ ~ 1.0 0.8
particle minecraft:wax_off ~ ~0.5 ~ 2 2 2 0.04 180
