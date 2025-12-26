tag @s add cryptid.fallground
tag @s add cryptid
scoreboard players reset @s cryptid.timer
tag @s add cryptid.timer
execute as @s at @s run tp @s ~ ~1 ~

playsound minecraft:cryptid.torch.flicker ambient @a

effect give @a[distance=0..4] darkness 4 2 true