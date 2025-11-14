tellraw @p {"text":"The burnt fragment grants temporary harmony","color":"red"}

playsound minecraft:cryptid.fog.ambient ambient @a[distance=0..20]
scoreboard players add @a[distance=0..20] cryptid.player.harmony 500
particle minecraft:end_rod ~ ~1 ~ 1.4 1.4 1.4 0.1 100


kill @s