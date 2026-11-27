# Apply the default config
data modify storage improved_happy_ghast:config features set value { \
    disable_wandering: { \
        enabled: true, \
    }, \
    increasing_speed: { \
        enabled: true, \
        speed: 0.085, \
    }, \
    reducing_size: { \
        enabled: true, \
        scale: 0.5, \
    }, \
    silencing: { \
        enabled: true, \
    }, \
    summoning_back: { \
        enabled: true, \
        max_distance: -1, \
    }, \
    damage_alerts: { \
        enabled: true, \
    }, \
}
