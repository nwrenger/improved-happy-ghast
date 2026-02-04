# Cooldown window
execute if entity @s[tag=improved_happy_ghast.horn_lock] run return fail

# Lock immediately
tag @s add improved_happy_ghast.horn_lock

# Use summon logic
function improved_happy_ghast:summon/use

# Schedule cleanup for later
schedule function improved_happy_ghast:summon/cleanup 7s append
