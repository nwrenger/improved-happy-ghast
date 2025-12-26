# Remove one mushroom
item modify entity @a[tag=improved_happy_ghast.player,gamemode=!creative,distance=..10,sort=nearest,limit=1] weapon.mainhand [{function:"minecraft:set_count",count:-1,add:true}]

# Fx
playsound minecraft:entity.shulker.close player @a[distance=..10] ~ ~ ~ 1.0 1.3
particle minecraft:reverse_portal ~ ~0.5 ~ 2 2 2 0.05 150
