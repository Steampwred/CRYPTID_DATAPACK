## visuals
fill ~1 ~-4 ~1 ~-1 ~-1 ~-1 air destroy
playsound minecraft:cryptid.skull1 hostile @a
tag @s add ritual.failure
place feature cryptid:convertflesh ~ ~-4 ~
scoreboard players remove @a[distance=..30] cryptid.player.harmony 10000
#function cryptid:rituals/random/randommessage

execute as @e[tag=sacrifice.item,type=item] run data merge entity @s {NoGravity:0b}
execute as @e[tag=sacrifice.item,type=item] run tag @s remove sacrifice.item
tag @e[tag=sacrifice.mob, distance=..5.25] remove sacrifice.mob


## function
execute store result score @s cryptid.random run random value 1..2
## low Severity 10-30
execute if score @s cryptid.ritual.probability matches 13..30 if score @s cryptid.random matches 1 run function cryptid:rituals/result/rewardevent/mishap/meatquake
execute if score @s cryptid.ritual.probability matches 15..30 if score @s cryptid.random matches 2 run function cryptid:rituals/result/rewardevent/mishap/rayfromheaven
## Medium Severity 5-20
execute if score @s cryptid.ritual.probability matches 5..15 if score @s cryptid.random matches 1 run function cryptid:rituals/result/rewardevent/mishap/eruption
execute if score @s cryptid.ritual.probability matches 5..15 if score @s cryptid.random matches 2 run function cryptid:rituals/result/rewardevent/mishap/eruption

## High Severity 0-5
execute if score @s cryptid.ritual.probability matches ..5 if score @s cryptid.random matches 1..2 run function cryptid:rituals/result/rewardevent/mishap/high
execute if score @s cryptid.ritual.probability matches ..2 if score @s cryptid.random matches 2 run function cryptid:rituals/result/rewardevent/mishap/high2