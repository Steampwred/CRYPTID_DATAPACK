#init


##push away

execute if entity @e[type=vex, tag=boss.skull, distance=0.1..1] run tp @s ^ ^ ^0.1 facing entity @e[sort=random,limit=1, distance=1..]

execute as @s[tag=!init] at @s run tp @s ~ ~-120 ~
execute as @s[tag=!init] at @s run execute store result score @s cryptid.random run random value 1..4
execute as @s[tag=!init] at @s run tag @s add init

execute positioned as @s[scores={cryptid.random=1}] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^28 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.19 ~ ~
execute positioned as @s[scores={cryptid.random=2}] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.31 ~ ~
execute positioned as @s[scores={cryptid.random=3}] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^21 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.27 ~ ~
execute positioned as @s[scores={cryptid.random=4}] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^35 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.21 ~ ~




execute if score @s cryptid.timer matches ..-600 run function cryptid:boss/action/skull/explode
execute if entity @p[distance=0..2] run function cryptid:boss/action/skull/explode

# destroy skull if hurt or in block
execute unless block ~ ~ ~ #cryptid:nonsolid run function cryptid:boss/action/skull/explode
execute if entity @s[nbt={HurtTime:1s}] run function cryptid:boss/action/skull/explode


##sound


execute store result score @s cryptid.player.random run random value 1..800
execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.skull.scream ambient @a ~ ~ ~ 1 1.3



particle dust_color_transition{from_color:[0.57,0.05,0.26],to_color:[0.27,0.15,0.02],scale:1} ^ ^ ^-0.4 0.2 0.2 0.2 2.3 10

