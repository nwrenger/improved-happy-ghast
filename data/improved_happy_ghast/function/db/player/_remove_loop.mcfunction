# Stop when sentinel reaches front
execute if data storage improved_happy_ghast:db players[0].__sentinel run return fail

# Pop front into tmp.cur
data modify storage improved_happy_ghast:tmp cur set from storage improved_happy_ghast:db players[0]
data remove storage improved_happy_ghast:db players[0]

# Push cur back, drop it when matching player
$execute unless data storage improved_happy_ghast:tmp {cur:{player:$(player)}} run data modify storage improved_happy_ghast:db players append from storage improved_happy_ghast:tmp cur

# Continue
function improved_happy_ghast:db/player/_remove_loop with storage improved_happy_ghast:tmp query
