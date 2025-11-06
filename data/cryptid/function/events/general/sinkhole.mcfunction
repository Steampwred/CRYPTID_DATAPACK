

execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^5 run summon armor_stand ~ ~20 ~ {CustomName:'[{"text":"Sinkhole"}]',Marker:1b, Invisible:1b, NoGravity:1b, Tags:["cryptid","cryptid.sinkhole","cryptid.timer","cryptid.radarignore"]}

execute as @e[tag=cryptid.sinkhole, type=armor_stand] at @s run execute positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

execute as @e[type=armor_stand, tag=cryptid.sinkhole, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticksinkhole"}

