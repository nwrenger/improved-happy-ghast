# Generates the edit function for each feature
# Requires: entry, label, color, modifier, modifier_value

$execute if data storage improved_happy_ghast:config {features:{$(entry): {enabled: true}}} \
    run tellraw @s [ \
        {text:"▸ ", color:"dark_gray"}, \
        {text:"$(label)",color:"$(color)"}, \
        {color:"gray", text:":"}, \
        " ", \
        { \
            color:"green", \
            text:"☑", \
            hover_event: { \
                action: "show_text", \
                value: [ \
                    "Feature ", \
                    {text:"$(label)",color:"$(color)"}, \
                    " is ", \
                    {text: "now", color: "gold"}, \
                    " ", \
                    {text: "enabled", color: "green"} \
                ] \
            } \
        }, \
        "  ", \
        { \
            color: "gold", \
            bold: true, \
            text: "[Toggle]", \
            click_event: { \
                action: "run_command", \
                command: "/function improved_happy_ghast:config/set_enabled {entry:\"$(entry)\",value:\"false\"}" \
            }, \
            hover_event: { \
                action: "show_text", \
                value: [{color: "gold", text: "Click to toggle"}] \
            } \
        } \
    ]

$execute if data storage improved_happy_ghast:config {features:{$(entry): {enabled: false}}} \
    run tellraw @s [ \
        {text:"▸ ", color:"dark_gray"}, \
        {text:"$(label)",color:"$(color)"}, \
        {color:"gray", text:":"}, \
        " ", \
        { \
            color:"red", \
            text:"☒", \
            hover_event: { \
                action: "show_text", \
                value: [ \
                    "Feature ", \
                    {text:"$(label)",color:"$(color)"}, \
                    " is ", \
                    {text: "now", color: "gold"}, \
                    " ", \
                    {text: "disabled", color: "red"} \
                ] \
            } \
        }, \
        "  ", \
        { \
            color: "gold", \
            bold: true, \
            text: "[Toggle]", \
            click_event: { \
                action: "run_command", \
                command: "/function improved_happy_ghast:config/set_enabled {entry:\"$(entry)\",value:\"true\"}" \
            }, \
            hover_event: { \
                action: "show_text", \
                value: [{color: "gold", text: "Click to toggle"}] \
            } \
        } \
    ]

$execute if data storage improved_happy_ghast:config features.$(entry).$(modifier) \
    run tellraw @s [ \
        "  ", \
        {text: "↳ ", color: "dark_gray"}, \
        {text:"$(modifier_label)",color:"gray"}, \
        {color:"gray", text:":"}, \
        " ", \
        { \
            color:"white", \
            text:"$(modifier_value)" \
        }, \
        "  ", \
        { \
            color: "gold", \
            bold: true, \
            text: "[Edit]", \
            click_event: { \
                action: "suggest_command", \
                command: "/function improved_happy_ghast:config/edit_modifier {entry:\"$(entry)\",modifier:\"$(modifier)\",modifier_value:\"$(modifier_value)\"}" \
            }, \
            hover_event: { \
                action: "show_text", \
                value: [{color: "gold", text: "Click to edit"}] \
            } \
        } \
    ]
