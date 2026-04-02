# Unmark as bound

# Modify current goat horn
item modify entity @a[tag=improved_happy_ghast.player,distance=..10,sort=nearest,limit=1] weapon.mainhand improved_happy_ghast:unbound

# Player id
data modify storage improved_happy_ghast:tmp query.player set from entity @a[tag=improved_happy_ghast.player,distance=..10,sort=nearest,limit=1] UUID

# Remove from db
function improved_happy_ghast:db/player/remove

# Mark as toggled
tag @s add improved_happy_ghast.toggled.bind

# Show use
function improved_happy_ghast:toggle/bind/use
