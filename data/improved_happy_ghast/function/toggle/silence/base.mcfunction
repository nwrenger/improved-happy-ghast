# Remove silenced state
tag @s remove improved_happy_ghast.silent

# Mark as toggled
tag @s add improved_happy_ghast.toggled.silence

# Update happy ghast's data
data modify entity @s Silent set value 0b

# Show use
function improved_happy_ghast:toggle/silence/use
