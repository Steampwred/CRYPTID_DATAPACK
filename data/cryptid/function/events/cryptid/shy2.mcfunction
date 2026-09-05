summon villager ~ ~100 ~ {DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"entity.cryptid.mimic_worm.name"}]',Tags:["cryptid","cryptid.shy2"],Sheared:1,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0.7f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:120f}]}


execute positioned ^ ^1 ^-6 run execute store result score @e[type=villager, sort=nearest, tag=cryptid.shy2] cryptid.player.random run random value 1..10

item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=1}] armor.head with potion[minecraft:custom_model_data=1317]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=2}] armor.head with potion[minecraft:custom_model_data=1327]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=3}] armor.head with potion[minecraft:custom_model_data=1331]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=4}] armor.head with potion[minecraft:custom_model_data=1333]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=5}] armor.head with potion[minecraft:custom_model_data=1387]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=6}] armor.head with potion[minecraft:custom_model_data=1349]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=7}] armor.head with potion[minecraft:custom_model_data=1351]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=8}] armor.head with potion[minecraft:custom_model_data=1364]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=9}] armor.head with potion[minecraft:custom_model_data=1378]
item replace entity @e[type=villager,tag=cryptid.shy2,sort=nearest,limit=1,scores={cryptid.player.random=9}] armor.head with potion[minecraft:custom_model_data=1387]



execute positioned ^ ^1 ^-6 run effect give @e[type=villager, sort=nearest, tag=cryptid.shy2] minecraft:invisibility infinite 1 true

execute positioned ^ ^1 ^-6 run effect give @e[type=villager, sort=nearest, tag=cryptid.shy2] minecraft:slowness infinite 1 true

execute positioned ^ ^1 ^-6 run attribute @e[type=villager, sort=nearest, tag=cryptid.shy2,limit=1] minecraft:generic.jump_strength base set 0.3

execute positioned ^ ^1 ^-6 run attribute @e[type=villager, sort=nearest, tag=cryptid.shy2,limit=1] minecraft:generic.step_height base set 5


execute positioned ^ ^1 ^-6 run scoreboard players set @e[type=villager, sort=nearest, tag=cryptid.shy2,limit=1] cryptid.mob.class 1

execute as @e[type=villager, tag=cryptid.shy2, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickshy2"}


execute as @e[type=villager, sort=random, limit=1, tag=cryptid.shy2] at @s run playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=0..250] ~ 100 ~ 1 0.1
