summon armor_stand ~ ~ ~ {PersistenceRequired:1b,NoAI:1, Tags:["cryptid.totem2circle"],DeathLootTable:"minecraft:empty",Silent:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1417},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute as @e[type=minecraft:armor_stand, tag=cryptid.totem2circle] at @s run attribute @s minecraft:generic.scale base set 20
execute as @e[type=minecraft:armor_stand, tag=cryptid.totem2circle] at @s[tag=!init] at @s run tp @s ~ ~-20 ~
execute as @e[type=minecraft:armor_stand, tag=cryptid.totem2circle] at @s[tag=!init] at @s run tag @s add init
