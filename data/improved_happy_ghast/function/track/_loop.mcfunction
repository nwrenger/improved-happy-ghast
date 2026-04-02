execute if data storage improved_happy_ghast:db players[0].__sentinel run return fail

# Pop front record into tmp.cur
data modify storage improved_happy_ghast:tmp cur set from storage improved_happy_ghast:db players[0]
data remove storage improved_happy_ghast:db players[0]

# Try to select the ghast by it's UUID and update entry
function improved_happy_ghast:track/_select with storage improved_happy_ghast:tmp cur

# Push record back
data modify storage improved_happy_ghast:db players append from storage improved_happy_ghast:tmp cur

# Continue
function improved_happy_ghast:track/_loop
