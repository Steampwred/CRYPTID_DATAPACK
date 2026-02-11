summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Fissure"}]',Health:120,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spray","cryptid.radarignore"],attributes:[{id:"generic.gravity",base:10f},{id:"generic.scale",base:0.625f}]}

item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=1] armor.head with potion[minecraft:custom_model_data=1415]
execute as @e[type=minecraft:armor_stand, sort=nearest, limit=1] at @s run attribute @s minecraft:generic.scale base set 0.4


execute as @e[type=armor_stand, tag=cryptid.spray, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspray"}
