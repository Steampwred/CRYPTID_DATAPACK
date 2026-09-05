summon armor_stand ~ ~620 ~ {CustomName:'[{"translate":"entity.cryptid.dead_light.name"}]',Tags:["cryptid","cryptid.deadlights"], Invisible:1b}


#spreadteams
spreadplayers ~ ~ 30 20 false @e[type=armor_stand,tag=cryptid.deadlights, tag=!init]


##start ticking
execute as @e[type=armor_stand, tag=cryptid.deadlights, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdeadlights"}



##playsound

execute as @e[type=armor_stand, tag=cryptid.deadlights, sort=nearest, limit=3] at @s run playsound minecraft:cryptid.crawler.ambient ambient @a ~ ~ ~ 4 0.5
##set scale and stuff
execute as @e[type=armor_stand,tag=cryptid.deadlights] at @s run attribute @s minecraft:generic.scale base set 0.01

##set the trap
execute as @e[type=armor_stand,tag=cryptid.deadlights] at @s align xyz at @s run setblock ~ ~5 ~ minecraft:glowstone



execute as @e[type=armor_stand,tag=cryptid.deadlights] at @s run tag @s add init
