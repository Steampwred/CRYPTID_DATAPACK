
tag @s add ritual.success

## Checks that all ritual conditions are met via a MACRO. This step runs the macro with the correct data context
function cryptid:rituals/result/macrocheck with storage cryptid:ritual alter

execute as @e[tag=sacrifice.mob,distance=..10] run function cryptid:action/general/grounddeath