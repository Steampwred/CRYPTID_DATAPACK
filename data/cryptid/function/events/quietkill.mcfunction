##controller to check which one of 3 deaths to chooose

execute store result score @s cryptid.random run random value 1..3

execute if score @s cryptid.random matches 1 run function cryptid:action/general/explodedeath
execute if score @s cryptid.random matches 2 run function cryptid:action/general/glitchdeath
execute if score @s cryptid.random matches 3 run function cryptid:action/general/grounddeath



###player
execute as @a[distance=0..8] at @s run tag @s add cryptid.glitchscreen