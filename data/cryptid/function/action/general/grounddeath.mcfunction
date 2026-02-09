tag @s add cryptid.fallground
tag @s add cryptid
scoreboard players reset @s cryptid.timer
tag @s add cryptid.timer

execute store result score @s cryptid.random run random value 1..30
scoreboard players operation @s cryptid.timer += @s cryptid.random 

execute as @s at @s run tp @s ~ ~1 ~

playsound minecraft:cryptid.torch.flicker ambient @a

effect give @a[distance=0..4] darkness 2 1 true