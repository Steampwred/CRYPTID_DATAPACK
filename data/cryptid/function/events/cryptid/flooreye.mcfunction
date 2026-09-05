execute store result score @s cryptid.player.random run random value 1..7

execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.flooreye.eternity","color":"red"}



summon minecraft:husk ~ 400 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.peeper"}]',Tags:["cryptid","cryptid.flooreye"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

summon minecraft:husk ~ 405 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.peeper"}]',Tags:["cryptid","cryptid.flooreye"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

summon minecraft:husk ~ 406 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.peeper"}]',Tags:["cryptid","cryptid.flooreye"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

summon minecraft:husk ~ 408 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.peeper"}]',Tags:["cryptid","cryptid.flooreye"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

execute positioned ~ 400 ~ as @e[type=husk, tag=cryptid.flooreye, sort=nearest, limit=4] at @s run function cryptid:action/stats/flooreye

execute positioned ~ 400 ~ as @e[type=husk, tag=cryptid.flooreye, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickflooreye"}




execute positioned ~ 400 ~ run scoreboard players set @e[type=husk, sort=nearest, tag=cryptid.flooreye,limit=1] cryptid.mob.class 1

execute positioned ~ 400 ~ run spreadplayers ~ ~ 5 70 under 500 false @e[type=husk, sort=nearest, tag=cryptid.flooreye, limit=4]



function cryptid:events/cryptid/flicker4