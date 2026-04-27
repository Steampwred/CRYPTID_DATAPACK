## Checks that all ritual conditions are met via a MACRO. This step runs the macro with the correct data context
function cryptid:rituals/result/macrocheck with storage cryptid:ritual alter
function cryptid:rituals/random/randommessage

execute unless entity @s[tag=ritual.requirmentmet] run function cryptid:rituals/result/failure
execute unless entity @s[tag=ritual.requirmentmet] if entity @s[tag=ritual.translate] run tellraw @a[distance=..15] {"text":"Invalid - Offerings not present","color":"dark_purple","bold":true}
execute if entity @s[tag=ritual.failure] run return fail

#on requirments met
tag @s add ritual.success
execute as @e[tag=sacrifice.mob,distance=..10,type=#cryptid:innocent] run function cryptid:action/general/grounddeath
execute as @e[tag=sacrifice.item,distance=..10,type=item] run kill @s