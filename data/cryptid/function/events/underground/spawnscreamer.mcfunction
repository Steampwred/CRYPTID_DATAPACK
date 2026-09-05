execute store result score @s cryptid.player.random run random value 1..4

execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.screamer.caves","color":"red"}



summon minecraft:vindicator ~ 401 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.stone_torture"}]',Tags:["cryptid","cryptid.screamer"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

summon minecraft:vindicator ~ 402 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.stone_torture"}]',Tags:["cryptid","cryptid.screamer"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

summon minecraft:vindicator ~ 403 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.stone_torture"}]',Tags:["cryptid","cryptid.screamer"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}




execute positioned ~ 400 ~ run effect give @e[type=vindicator, tag=cryptid.screamer] minecraft:invisibility infinite 1 true
execute positioned ~ 400 ~ run effect give @e[type=vindicator, tag=cryptid.screamer] minecraft:resistance infinite 255 true


execute as @e[type=vindicator, tag=cryptid.screamer] at @s run function cryptid:action/stats/screamer

##tick
execute positioned ~ 400 ~ as @e[type=vindicator, tag=cryptid.screamer, tag=!cryptid.markerapplied, sort=nearest, limit=9] at @s run function cryptid:action/general/spawntickmarker {"name":"tickscreamer"}

execute positioned ~ 400 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.screamer,limit=1] cryptid.mob.class 2

execute positioned ~ 400 ~ run spreadplayers ~ ~ 10 10 under 40 false @e[type=vindicator, sort=nearest, tag=cryptid.screamer, limit=1]



function cryptid:events/cryptid/flicker