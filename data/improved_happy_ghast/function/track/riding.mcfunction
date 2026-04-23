# Notify players whose ridden happy ghast lost HP
execute as @a[predicate=improved_happy_ghast:riding_ghast] \
    on vehicle \
    if function improved_happy_ghast:track/check_hurt \
    on passengers \
    run function improved_happy_ghast:notify/hurt
