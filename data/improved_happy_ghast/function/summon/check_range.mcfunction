# Omit Y so the selector measures from the caller's height.
$execute at @s if dimension $(dim) \
    if entity @s[x=$(x),z=$(z),distance=..$(max_distance)] \
    run return 1

data remove storage improved_happy_ghast:tmp result
title @s actionbar {"text":"Your Happy Ghast is out of range","color":"red"}
