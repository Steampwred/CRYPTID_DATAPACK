playsound minecraft:cryptid.world.infection ambient @a ~ ~ ~ 1 0.4

execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^8 run summon armor_stand ~ ~ ~ {CustomName:'[{"text":"Bit cleanup"}]',Marker:1b, Invisible:1b, NoGravity:1b, Tags:["cryptid","cryptid.breakerant","cryptid.timer","cryptid.radarignore"]}

execute as @e[tag=cryptid.breakerant, type=armor_stand] at @s run execute positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

execute as @e[type=armor_stand, tag=cryptid.breakerant, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickbreakerant"}



playsound minecraft:ambient.nether_wastes.mood ambient @a ~ ~ ~ 2 0.1