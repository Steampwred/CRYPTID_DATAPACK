setblock ~ 151 ~ minecraft:obsidian
setblock ~ 152 ~ minecraft:chest{LootTable:"chests/village/village_temple"} replace

execute as @s at @s run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^80 positioned ~ 150 ~ run summon minecraft:armor_stand ~ ~ ~ {Invisible:1, NoGravity:1, Tags:["cryptid","cryptid.skyvine","cryptid.radarignore"],CustomName:'[{"text":"Corrupted Vine"}]'}

execute as @e[type=armor_stand, tag=cryptid.skyvine, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickskyvine"}


execute as @s at @s run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^80 positioned ~ 150 ~ run playsound minecraft:cryptid.sky.ambient ambient @a[distance=0..400] ~ ~ ~ 150 0.8