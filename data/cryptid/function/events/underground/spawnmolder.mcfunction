summon minecraft:sheep ~ 400 ~ {Invincible:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.void_tormentor"}]',Tags:["cryptid","cryptid.molder"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:1.7f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}


execute positioned ~ 400 ~ run effect give @e[type=sheep, tag=cryptid.molder] minecraft:invisibility infinite 1 true


execute as @e[type=sheep, tag=cryptid.molder] at @s run function cryptid:action/stats/molder

execute as @e[type=sheep, tag=cryptid.molder, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickmolder"}


execute positioned ~ 400 ~ run scoreboard players set @e[type=sheep, sort=nearest, tag=cryptid.molder,limit=1] cryptid.mob.class 1

execute positioned ~ 400 ~ run spreadplayers ~ ~ 10 30 under 0 false @e[type=sheep, sort=nearest, tag=cryptid.molder, limit=1]