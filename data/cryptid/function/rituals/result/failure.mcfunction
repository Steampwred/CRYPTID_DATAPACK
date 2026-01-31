## visuals
fill ~1 ~-4 ~1 ~-1 ~-1 ~-1 air destroy
playsound minecraft:cryptid.skull1 hostile @a
function cryptid:rituals/result/rewardevent/mishap/meatquake
tag @s add ritual.failure

scoreboard players remove @a[distance=..30] cryptid.player.harmony 10000


execute as @e[tag=sacrifice.item,type=item] run data merge entity @s {NoGravity:0b}
execute as @e[tag=sacrifice.item,type=item] run tag @s remove sacrifice.item
tag @e[tag=sacrifice.mob, distance=..5.25] remove sacrifice.mob


## function
execute store result score @s cryptid.random run random value 1..2
## low Severity 20-30
execute if score @s cryptid.ritual.probability matches 20..30 if score @s cryptid.random matches 1 run function cryptid:rituals/result/rewardevent/mishap/low1
execute if score @s cryptid.ritual.probability matches 20..30 if score @s cryptid.random matches 2 run function cryptid:rituals/result/rewardevent/mishap/low2
## Medium Severity 5-20
execute if score @s cryptid.ritual.probability matches 5..20 if score @s cryptid.random matches 1 run function cryptid:rituals/result/rewardevent/mishap/mid1
execute if score @s cryptid.ritual.probability matches 5..20 if score @s cryptid.random matches 2 run function cryptid:rituals/result/rewardevent/mishap/mid2
## High Severity 0-5
execute if score @s cryptid.ritual.probability matches ..5 if score @s cryptid.random matches 1 run function cryptid:rituals/result/rewardevent/mishap/high
execute if score @s cryptid.ritual.probability matches ..5 if score @s cryptid.random matches 2 run function cryptid:rituals/result/rewardevent/mishap/high2