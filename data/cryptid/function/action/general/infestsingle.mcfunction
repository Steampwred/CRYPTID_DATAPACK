
execute store result score @s cryptid.random run random value 1..3

execute if score @s cryptid.random matches 1..2 run return run function cryptid:action/general/grounddeath

## Note this doesnt do what i tought it did, what is tick marker "ticked" idk, remeber to change to angry mod
tag @s add cryptid.ed
tag @s add cryptid

execute as @s[type=!player,tag=cryptid.ed, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticked"}

execute at @s as @s run tp @s ~ ~ ~ ~ -90