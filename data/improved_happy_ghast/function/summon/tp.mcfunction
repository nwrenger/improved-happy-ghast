# Teleport ghast to player ensuring chunk is loaded

$execute in $(dim) \
    run tp @e[nbt={UUID:$(ghast)}] @a[nbt={UUID:$(player)},limit=1]
$execute in $(dim) \
    if data storage improved_happy_ghast:tmp {forceload:1b} \
    run forceload remove $(x) $(z)

# Cleanup
data remove storage improved_happy_ghast:tmp forceload
