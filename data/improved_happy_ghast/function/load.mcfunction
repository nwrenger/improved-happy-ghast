# ghast tracking (each second)
function improved_happy_ghast:track/main

# scoreboard vars
scoreboard objectives add horn_used minecraft.used:minecraft.goat_horn
scoreboard objectives add horn_used_prev dummy
scoreboard objectives add hp dummy
scoreboard objectives add hp_prev dummy
