playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 0.2 0.1


execute store result score @s cryptid.player.random run random value 1..3
execute if score @s cryptid.player.random matches 1 run summon zombie ~ ~120 ~ {PersistenceRequired:1b,NoAI:1b, Tags:["bosscryptid","boss.skull"],DeathLootTable:"minecraft:empty",Silent:1b,NoGravity:1b,IsBaby:1b, ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1389},count:1}],ArmorDropChances:[0f,0f,0f,0f]}
scoreboard players reset @s cryptid.player.random

execute as @e[tag=boss.skull, type=zombie] at @s run attribute @s minecraft:generic.scale base set 0.8
execute as @e[tag=boss.skull, type=zombie] at @s run attribute @s minecraft:generic.max_health base set 3

execute as @e[tag=boss.skull, type=zombie] at @s run effect give @s invisibility infinite 1 true
