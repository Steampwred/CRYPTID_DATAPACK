summon minecraft:vindicator ~ 400 ~ {DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.void_tormentor"}]',Tags:["cryptid","cryptid.spider"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:1.7f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

item replace entity @e[type=vindicator,tag=cryptid.spider] armor.head with potion[minecraft:custom_model_data=1343]


execute positioned ~ 400 ~ run effect give @e[type=vindicator, tag=cryptid.spider] minecraft:invisibility infinite 1 true


execute as @e[type=vindicator, tag=cryptid.spider] at @s run function cryptid:action/stats/spider

execute as @e[type=vindicator, tag=cryptid.spider, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspider"}


execute positioned ~ 400 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.spider,limit=1] cryptid.mob.class 5

execute positioned ~ 400 ~ run spreadplayers ~ ~ 10 30 under 40 false @e[type=vindicator, sort=nearest, tag=cryptid.spider, limit=1]



function cryptid:events/cryptid/flicker5