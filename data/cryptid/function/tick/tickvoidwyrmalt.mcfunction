

##slowingtime
execute store result score @s cryptid.player.random run random value 1..3000
execute if entity @p[distance=0..50] run execute store result score @s cryptid.player.random run random value 1..2000



##kill
execute if score @s cryptid.timer matches ..-600 if score @s cryptid.player.random matches 1..3 run function cryptid:events/quietkill


##########tracking mode with no playters
tp @s[tag=left] ^ ^ ^0.1 ~0.05 ~
tp @s[tag=right] ^ ^ ^0.1 ~-0.05 ~


##curving mode

execute if score @s cryptid.player.random matches 100..120 run tag @s add left
execute if score @s cryptid.player.random matches 100..120 run tag @s remove right

execute if score @s cryptid.player.random matches 120..160 run tag @s add right
execute if score @s cryptid.player.random matches 120..160 run tag @s remove left



##moveforward
execute positioned as @s rotated as @s run tp @s ^ ^ ^1.25

##sounbds

execute if score @s cryptid.player.random matches 100..150 if entity @p[distance=0..40] run playsound minecraft:cryptid.bone.knock ambient @a ~ ~100 ~ 10 0.1
execute if score @s cryptid.player.random matches 100..170 if entity @p[distance=40..] run playsound minecraft:cryptid.deep.vibrate ambient @p ~ ~-100 ~ 100 0.1



##damage

execute as @s at @s run tag @a[distance=0..30] add cryptid.fakescreen
execute as @a[distance=0..30] at @s run damage @s 0.5 cryptid:chomp by @e[tag=cryptid.voidwyrm, type=armor_stand, sort=nearest, limit=1]

execute as @s[tag=!init] run data merge entity @s {item:{id:potion,components:{"minecraft:custom_model_data":1406},count:1},teleport_duration:5}
execute as @s[tag=!init] run tag @s add init