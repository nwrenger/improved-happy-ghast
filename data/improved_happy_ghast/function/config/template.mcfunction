$data modify storage improved_happy_ghast:tmp template set value { entry: "$(entry)", label: "$(label)", color: "$(color)", modifier: "$(modifier)", modifier_label: "$(modifier_label)", modifier_value: "_" }

$execute if data storage improved_happy_ghast:config features.$(entry).$(modifier) run data modify storage improved_happy_ghast:tmp template.modifier_value set from storage improved_happy_ghast:config features.$(entry).$(modifier)

function improved_happy_ghast:config/template_builder with storage improved_happy_ghast:tmp template

# Clean up
data remove storage improved_happy_ghast:tmp template
