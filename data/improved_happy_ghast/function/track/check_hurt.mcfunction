# Check if hurt, @s = happy ghast
scoreboard players operation @s hp_prev = @s hp
execute store result score @s hp run data get entity @s Health 10
execute if score @s hp < @s hp_prev run return 1
return 0
