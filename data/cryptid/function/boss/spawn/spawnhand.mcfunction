
#summon zombie ~ ~120 ~ {PersistenceRequired:1b,NoAI:1b, Tags:["bosscryptid","boss.hand"],DeathLootTable:"minecraft:empty",Silent:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1397},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon item_display ~ ~120 ~ {Tags:["bosscryptid","boss.hand"],item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":1397},count:1},item_display:"head",teleport_duration:0,transformation:{translation:[0.0,2.2,0.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1]}}


playsound minecraft:cryptid.sword.spawn ambient @a ~ ~ ~ 0.5 0.7

#execute as @e[type=#cryptid:bossbase, sort=nearest,limit=1, tag=boss.hand, tag=!init1] run execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .bosshand cryptid.anitimer

execute as @e[type=#cryptid:bossbase, sort=nearest,limit=1, tag=boss.hand, tag=!init1] run execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get .bosshand cryptid.anitimer

execute as @e[type=#cryptid:bossbase, sort=nearest,limit=1, tag=boss.hand, tag=!init1] run tag @s add init1



execute as @e[tag=boss.hand, type=#cryptid:bossbase] at @s run attribute @s minecraft:generic.scale base set 0.2
execute as @e[tag=boss.hand, type=#cryptid:bossbase] at @s run effect give @s invisibility infinite 1 true
