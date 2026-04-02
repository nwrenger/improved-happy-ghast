# Remove ai as off
tag @s remove improved_happy_ghast.noai

# Mark as toggled
tag @s add improved_happy_ghast.toggled.wandering

# Update happy ghast's data
data modify entity @s NoAI set value 0b

# Show use
function improved_happy_ghast:toggle/wandering/use
