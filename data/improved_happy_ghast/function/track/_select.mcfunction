$execute as @e[nbt={UUID:$(ghast)}] \
    at @s \
    run function improved_happy_ghast:track/_update_one with storage improved_happy_ghast:tmp cur
