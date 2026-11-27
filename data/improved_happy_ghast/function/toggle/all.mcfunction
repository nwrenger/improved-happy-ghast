# Toggle wandering
execute if data storage improved_happy_ghast:config {features: {disable_wandering: {enabled: true}}} run \
    function improved_happy_ghast:toggle/wandering/main

# Toggle speed
execute if data storage improved_happy_ghast:config {features: {increasing_speed: {enabled: true}}} run \
    function improved_happy_ghast:toggle/speed/main

# Toggle size
execute if data storage improved_happy_ghast:config {features: {reducing_size: {enabled: true}}} run \
    function improved_happy_ghast:toggle/size/main

# Toggle silence
execute if data storage improved_happy_ghast:config {features: {silencing: {enabled: true}}} run \
    function improved_happy_ghast:toggle/silence/main

# Toggle bind
execute if data storage improved_happy_ghast:config {features: {summoning_back: {enabled: true}}} run \
    function improved_happy_ghast:toggle/bind/main
