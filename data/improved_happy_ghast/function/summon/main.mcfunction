# Via scoreboard making sure that there is only one item use
execute unless entity @s[scores={horn_used_prev=0..}] run scoreboard players set @s horn_used_prev 0
execute if score @s horn_used > @s horn_used_prev run function improved_happy_ghast:summon/use
scoreboard players operation @s horn_used_prev = @s horn_used

# Revoke advancement
advancement revoke @s only improved_happy_ghast:player_use
