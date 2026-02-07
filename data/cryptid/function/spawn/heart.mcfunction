##remembertocheck for 400 blocks in the air
##setup

summon vindicator ~ 400 ~ {DeathLootTable:"minecraft:empty",CustomName:'[{"text":"Voracious Heart"}]',NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.vorheart","cryptid.underground"],HandItems:[{Count:1}],ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f],attributes:[{id:"generic.max_health",base:96.3f},{id:"generic.armor",base:12f},{id:"generic.knockback_resistance",base:1f},{id:"generic.armor",base:0}]}
scoreboard players set @e[tag=cryptid.vorheart,type=vindicator] cryptid.mob.class 2
effect give @e[type=minecraft:vindicator, tag=cryptid.vorheart] minecraft:invisibility infinite 1 true


execute as @e[type=vindicator, tag=cryptid.vorheart, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"heart"}
