

###################spawn rings
summon zombie ~ ~1 ~ {Invulnerable:1b, Tags:["bosscryptid","boss.ring","killignore"],PersistenceRequired:1b, Silent:1, NoAI:1, NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1390},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon zombie ~ ~1 ~ {Invulnerable:1b,Tags:["bosscryptid","boss.ring","killignore"],PersistenceRequired:1b, Silent:1, NoAI:1,  NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1391},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon zombie ~ ~1 ~ {Invulnerable:1b,Tags:["bosscryptid","boss.ring","killignore"],PersistenceRequired:1b, Silent:1, NoAI:1, NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1392},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

effect give @e[type=zombie, tag=boss.ring] invisibility infinite 1 true

#####################spawn cores

summon armor_stand ~ ~ ~ {Tags:[Invulnerable:1b,"bosscryptid","boss.core1","killignore"],NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1393},count:1}],ArmorDropChances:[0f,0f,0f,0f]}



##summon ccore entity that ticks from
summon zombie ~ ~-1 ~ {Invulnerable:1b,Tags:["bosscryptid","boss.core2","killignore"],PersistenceRequired:1b, NoAI:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1394},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

##summon health entityi
summon zombie ~ ~-12 ~ {Silent:1, NoAI:1,Tags:["bosscryptid","boss.core3","killignore"],PersistenceRequired:1b, NoAI:1,NoGravity:1,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1335},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute as @e[type=zombie, tag=boss.core2] at @s run attribute @s generic.scale base set 2
effect give @e[type=zombie, tag=boss.core2] invisibility infinite 255 true
effect give @e[type=zombie, tag=boss.core3] invisibility infinite 255 true

##sethealth and scale
execute as @e[type=zombie, tag=boss.core3] at @s run attribute @s minecraft:generic.scale base set 26
execute as @e[type=zombie, tag=boss.core3] at @s run attribute @s minecraft:generic.max_health base set 500
execute as @e[type=zombie, tag=boss.core3] at @s run data merge entity @s {Health:500}
execute as @e[type=zombie, tag=boss.core3] at @s run tp @s ~ ~ ~ 0 90
execute as @e[type=zombie, tag=boss.core3] at @s run effect give @s resistance infinite 0 true