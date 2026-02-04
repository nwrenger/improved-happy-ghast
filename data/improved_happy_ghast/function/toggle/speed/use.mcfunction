# Remove one cookie
item modify entity @a[tag=improved_happy_ghast.player,gamemode=!creative,distance=..10,sort=nearest,limit=1] weapon.mainhand [{function:"minecraft:set_count",count:-1,add:true}]

# Fx
playsound minecraft:item.trident.riptide_1 player @a[distance=..10] ~ ~ ~ 0.9 1.5
particle minecraft:cloud ~ ~0.5 ~ 2 2 2 0.04 180
