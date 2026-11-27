# Header
tellraw @s [ \
    "\n", \
    {text:"Improved Happy Ghast",bold:true,color:"gold"}, \
    " by ", \
    { \
        text:"nwrenger", \
        italic:true, \
        color:"#F223F2", \
        click_event:{action:"open_url",url:"https://nwrenger.dev"} \
    }, \
    " - Config", \
    "\n", \
]

# Entries
function improved_happy_ghast:config/template {entry: "disable_wandering", label: "Disable Wandering", color: "red", modifier: "_", modifier_label: "_"}
function improved_happy_ghast:config/template {entry: "increasing_speed", label: "Increasing Speed", color: "green", modifier: "speed", modifier_label: "Speed"}
function improved_happy_ghast:config/template {entry: "reducing_size", label: "Reducing Size", color: "aqua", modifier: "scale", modifier_label: "Scale"}
function improved_happy_ghast:config/template {entry: "silencing", label: "Silencing", color: "yellow", modifier: "_", modifier_label: "_"}
function improved_happy_ghast:config/template {entry: "summoning_back", label: "Summoning Back", color: "blue", modifier: "max_distance", modifier_label: "Max Distance"}
function improved_happy_ghast:config/template {entry: "damage_alerts", label: "Damage Alerts", color: "light_purple", modifier: "_", modifier_label: "_"}

# Footer
tellraw @s ""
