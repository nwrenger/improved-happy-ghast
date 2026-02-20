# Stop when sentinel reaches front
execute if data storage improved_happy_ghast:db players[0].__sentinel run return fail

# Pop front into tmp.cur
data modify storage improved_happy_ghast:tmp cur set from storage improved_happy_ghast:db players[0]
data remove storage improved_happy_ghast:db players[0]

# Compare cur.player with tmp.p.player
$execute if data storage improved_happy_ghast:tmp {found:0b} if data storage improved_happy_ghast:tmp {cur:{player:$(player)}} run function improved_happy_ghast:db/player/_upsert_replace

# Push (possibly updated) cur back to end
data modify storage improved_happy_ghast:db players append from storage improved_happy_ghast:tmp cur

# Continue rotating
function improved_happy_ghast:db/player/_upsert_loop with storage improved_happy_ghast:tmp p
