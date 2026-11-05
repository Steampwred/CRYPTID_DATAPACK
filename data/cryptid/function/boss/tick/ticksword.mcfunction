##init1
execute as @s[tag=!init] at @s run tp @s ~ ~-121 ~
execute as @s[tag=!init] at @s run tag @s add init


##init2

execute as @s[tag=!init2, tag=fixed] positioned as @s rotated as @s run tp @s ~ ~ ~ facing entity @e[tag=boss.core2, type=zombie, sort=nearest, limit=1]
execute as @s[tag=!init2, tag=fixed] positioned as @s rotated as @s run tp @s ~ ~ ~ ~180 0

execute as @s[tag=!init2, tag=fixed] at @s run tag @s add init2



##look first
execute positioned as @s[tag=!stuck,tag=!fixed] if score @s cryptid.timer matches -20.. run tp @s ~ ~ ~ facing entity @p
##random movement
execute positioned as @s[tag=!stuck,tag=!fixed] if score @s cryptid.timer matches -22 run execute store result score @s cryptid.random run random value 1..4
execute positioned as @s[tag=!stuck] rotated as @s run tp @s[scores={cryptid.random=1, cryptid.timer=-22}] ~ ~ ~ ~ ~-6.3
execute positioned as @s[tag=!stuck] rotated as @s run tp @s[scores={cryptid.random=2, cryptid.timer=-22}] ~ ~ ~ ~ ~6.3
execute positioned as @s[tag=!stuck] rotated as @s run tp @s[scores={cryptid.random=3, cryptid.timer=-22}] ~ ~ ~ ~6.3 ~
execute positioned as @s[tag=!stuck] rotated as @s run tp @s[scores={cryptid.random=4, cryptid.timer=-22}] ~ ~ ~ ~-6.3 ~



##fixed
execute as @s[tag=fixed,tag=!stuck] positioned as @s run tp @s ^ ^ ^2.1
execute as @s[tag=fixed,tag=!stuck] positioned as @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.01 10


##init sounds
#execute if score @s[tag=!stuck] cryptid.timer matches -20 run particle minecraft:end_rod ^ ^0.2 ^0.3 0.4 0.4 0.4 0.04 50
execute if score @s[tag=!stuck] cryptid.timer matches -20 run particle minecraft:flash ^ ^0.25 ^0.3 0.1 0.1 0.1 1 3
execute if score @s[tag=!stuck] cryptid.timer matches -21 run playsound minecraft:cryptid.sword.throw ambient @a ~ ~ ~ 0.5 0.7


##tp math, slow at first
execute positioned as @s rotated as @s run tp @s[tag=!stuck, scores={cryptid.timer=-25..-20}] ^ ^ ^0.5
execute positioned as @s rotated as @s run tp @s[tag=!stuck, scores={cryptid.timer=..-25}] ^ ^ ^2.4



##explosion math
execute if entity @p[distance=0..1.2] at @s run function cryptid:boss/action/sword/explode
execute if score @s cryptid.timer matches ..-200 run function cryptid:boss/action/sword/explode

execute if entity @s[tag=!stuck] unless block ^ ^1 ^4 air unless block ^ ^1 ^4 #minecraft:slabs run function cryptid:boss/action/sword/delay
execute if entity @s[tag=!stuck] unless block ^ ^1 ^2 air unless block ^ ^1 ^2 #minecraft:slabs run function cryptid:boss/action/sword/delay
execute if entity @s[tag=!stuck] unless block ^ ^1 ^1 air unless block ^ ^1 ^1 #minecraft:slabs run function cryptid:boss/action/sword/delay
execute if entity @s[tag=!stuck] unless block ^ ^1 ^0.5 air unless block ^ ^1 ^0.5 #minecraft:slabs run function cryptid:boss/action/sword/delay


execute if score @s[tag=stuck] cryptid.timer matches 0 run function cryptid:boss/action/sword/explode

