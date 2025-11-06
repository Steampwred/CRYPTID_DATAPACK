summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Fissure"}]',Health:120,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spray","cryptid.radarignore"],attributes:[{id:"generic.gravity",base:10f},{id:"generic.scale",base:0.0625f}]}


execute as @e[type=armor_stand, tag=cryptid.spray, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspray"}
