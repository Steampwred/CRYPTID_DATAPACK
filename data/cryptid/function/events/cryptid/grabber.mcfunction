summon vindicator ^ ^1 ^3 {NoAI:1, DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.phantom_undertow"}]',Tags:["cryptid","cryptid.grabber"],Sheared:1,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:3.7f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:120f}]}


item replace entity @e[type=vindicator,tag=cryptid.grabber,sort=nearest] armor.head with potion[minecraft:custom_model_data=1338]



execute positioned ^ ^1 ^-6 run effect give @e[type=vindicator, sort=nearest, tag=cryptid.grabber] minecraft:invisibility infinite 1 true

execute positioned ^ ^1 ^-6 run effect give @e[type=vindicator, sort=nearest, tag=cryptid.grabber2] minecraft:invisibility infinite 1 true


#execute positioned ^ ^1 ^-6 run effect give @e[type=vindicator, sort=nearest, tag=cryptid.grabber] minecraft:slowness infinite 1 true

execute as @e[type=vindicator, sort=nearest, tag=cryptid.grabber] at @s run attribute @s minecraft:generic.jump_strength base set 1



execute as @e[type=vindicator, sort=nearest, tag=cryptid.grabber] at @s run attribute @s minecraft:generic.step_height base set 5

execute as @e[type=vindicator, sort=nearest, tag=cryptid.grabber] at @s run attribute @s minecraft:generic.scale base set 0.8

execute as @e[type=vindicator, tag=cryptid.grabber, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickgrabber"}

execute positioned ^ ^1 ^-6 run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.grabber,limit=1] cryptid.mob.class 3

execute unless block ~ ~ ~ air run tp @s @e[type=!player, sort=nearest, limit=1, distance=1..,tag=!cryptid.grabber]