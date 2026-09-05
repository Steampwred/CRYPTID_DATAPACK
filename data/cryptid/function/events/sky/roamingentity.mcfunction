execute store result score @s cryptid.player.random run random value 1..3
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.harrow.see_us","color":"red"}


execute store result score @s cryptid.player.random run random value 1..4
execute if score @s cryptid.player.random matches 1 run execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^-80 run summon vindicator ~ ~ ~ {CustomName:'[{"translate":"cryptid.entity.harrow"}]',Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid.roaming","cryptid.harrow","cryptid"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1302},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s cryptid.player.random matches 2 run execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^-60 run summon vindicator ~ ~ ~ {CustomName:'[{"translate":"cryptid.entity.harrow"}]',Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid.roaming","cryptid.harrow","cryptid"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1302},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s cryptid.player.random matches 3 run execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^-60 run summon vindicator ~ ~ ~ {CustomName:'[{"translate":"cryptid.entity.harrow"}]',Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid.roaming","cryptid.harrow","cryptid"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1302},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s cryptid.player.random matches 4 run execute facing entity @e[sort=random, limit=1] eyes run execute positioned ^ ^ ^-70 run summon vindicator ~ ~ ~ {CustomName:'[{"translate":"cryptid.entity.harrow"}]',Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid.roaming","cryptid.harrow","cryptid"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1302},count:1}],ArmorDropChances:[0f,0f,0f,0f]}




scoreboard players set @e[type=vindicator,tag=cryptid.harrow] cryptid.mob.class 6
playsound minecraft:cryptid.skull1 ambient @a[distance=0..70] ~ ~10 ~ 0.5


##tick
execute as @e[type=vindicator, tag=cryptid.harrow, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickharrow"}