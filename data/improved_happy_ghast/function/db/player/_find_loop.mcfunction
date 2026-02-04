# Stop when sentinel reaches front or it was found
execute if data storage improved_happy_ghast:db players[0].__sentinel run return fail
execute if data storage improved_happy_ghast:tmp {found:1b} run return fail

# Pop front into tmp.cur
data modify storage improved_happy_ghast:tmp cur set from storage improved_happy_ghast:db players[0]
data remove storage improved_happy_ghast:db players[0]

# Compare cur.player with query.player
$execute if data storage improved_happy_ghast:tmp {found:0b} if data storage improved_happy_ghast:tmp {cur:{player:$(player)}} run function improved_happy_ghast:db/player/_find_result

# Push cur back to end (keeps DB intact)
data modify storage improved_happy_ghast:db players append from storage improved_happy_ghast:tmp cur

# Continue
function improved_happy_ghast:db/player/_find_loop with storage improved_happy_ghast:tmp query
