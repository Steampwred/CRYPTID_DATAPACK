playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 0.2 0.1

summon armor_stand ~ ~ ~ {Invisible:1b, PersistenceRequired:1b,NoAI:1, Tags:["bosscryptid","boss.handline"],DeathLootTable:"minecraft:empty",Silent:1b,NoGravity:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[type=armor_stand, sort=nearest,limit=1, tag=boss.handline, tag=!init] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=armor_stand, sort=nearest,limit=1, tag=boss.handline, tag=!init] at @s run tp @s ^ ^ ^6