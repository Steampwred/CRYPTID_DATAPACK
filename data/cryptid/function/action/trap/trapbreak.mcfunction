##always
execute as @n[tag=trap.trapped,distance=..5] run tag @s remove trap.trapped
playsound item.crossbow.loading_end ambient @a[distance=..15] ~ ~ ~ 1 1.6


## Break
execute if block ~ ~-0.5 ~ air run return run kill @s
execute store result score @s cryptid.random run random value 1..4
execute if score @s cryptid.random matches 1 run loot spawn ~ ~ ~ loot cryptid:entities/beartrap
playsound item.shield.break ambient @a[distance=..15] ~ ~ ~ 1 0.6
particle block{block_state:{Name:copper_bulb}} ~ ~ ~ 0.2 0.1 0.2 0.3 25
kill @s