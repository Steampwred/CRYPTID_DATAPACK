setblock ~ 310 ~ minecraft:obsidian
setblock ~ 311 ~ minecraft:chest{LootTable:"chests/village/village_butcher"} replace
execute as @s at @s run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^80 positioned ~ 300 ~ run summon minecraft:armor_stand ~ ~ ~ {Invisible:1, NoGravity:1, Tags:["cryptid","cryptid.skyray","cryptid.radarignore"]}


execute as @e[type=armor_stand, tag=cryptid.skyray, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickray"}


execute as @s at @s run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^80 positioned ~ 300 ~ run playsound minecraft:cryptid.sky.ambient ambient @a[distance=0..400] ~ ~ ~ 150 0.8