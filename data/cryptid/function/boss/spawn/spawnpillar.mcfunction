playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 0.2 0.1

#summon zombie ~ ~120 ~ {PersistenceRequired:1b,NoAI:1, Tags:["bosscryptid","boss.pillar","killignore"],DeathLootTable:"minecraft:empty",Silent:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1398},count:1}],ArmorDropChances:[0f,0f,0f,0f]}
summon zombie ~ ~120 ~ {PersistenceRequired:1b,NoAI:1, Tags:["bosscryptid","boss.pillar","killignore"],DeathLootTable:"minecraft:empty",Silent:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorDropChances:[0f,0f,0f,0f],Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":1398},count:1},item_display:"head",Tags:["pillardisplay"]}]}
execute as @e[tag=boss.pillar, type=zombie] at @s run attribute @s minecraft:generic.scale base set 2.5
execute as @e[tag=boss.pillar, type=zombie] at @s run attribute @s minecraft:generic.max_health base set 15
execute as @e[tag=boss.pillar, type=zombie] at @s run attribute @s minecraft:generic.gravity base set 15
execute as @e[tag=boss.pillar, type=zombie] at @s run attribute @s minecraft:generic.fall_damage_multiplier base set 0
execute as @e[tag=boss.pillar, type=zombie] at @s run attribute @s minecraft:generic.attack_knockback base set 300

execute as @e[tag=boss.pillar, type=zombie] at @s run effect give @s invisibility infinite 1 true
