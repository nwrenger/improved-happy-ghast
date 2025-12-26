# Remove speed as fast
tag @s remove improved_happy_ghast.fast

# Mark as toggled
tag @s add improved_happy_ghast.toggled.speed

# Update happy ghast's attribute
attribute @s minecraft:flying_speed base set 0.05

# Show use
function improved_happy_ghast:toggle/speed/use
