summon armor_stand ~ ~ ~ {Invisible:1, NoAI:1, DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"entity.cryptid.silent_philogen.name"}]',Tags:["cryptid","cryptid.angrystalker","cryptid.timer"],Sheared:1,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:3.7f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:120f}]}


item replace entity @e[type=armor_stand,tag=cryptid.angrystalker,sort=nearest] armor.head with potion[minecraft:custom_model_data=1338]

execute as @e[type=armor_stand, sort=nearest, tag=cryptid.angrystalker] at @s run attribute @s minecraft:generic.scale base set 1.8

execute as @e[type=armor_stand, tag=cryptid.angrystalker, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickangrystalker"}

execute positioned ^ ^1 ^-6 run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.angrystalker,limit=1] cryptid.mob.class 3


kill @s
