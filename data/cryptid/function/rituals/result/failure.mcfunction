## visuals
fill ~1 ~-4 ~1 ~-1 ~-1 ~-1 air destroy
playsound minecraft:cryptid.skull1 hostile @a
function cryptid:rituals/result/rewardevent/mishap/meatquake
tag @s add ritual.failure

scoreboard players remove @a[distance=..30] cryptid.player.harmony 10000

## function
execute if score @s cryptid.ritual.probability matches 20..30 run function cryptid:rituals/result/failurelow
execute if score @s cryptid.ritual.probability matches 5..20 run function cryptid:rituals/result/failuremid
execute if score @s cryptid.ritual.probability matches ..5 run function cryptid:rituals/result/failurehigh
