
###init

execute as @s[tag=!init] positioned as @s run tp @s ^ ^ ^30 facing entity @e[sort=random, limit=1, distance=20..]
execute as @s[tag=!init] positioned as @s run execute positioned over ocean_floor run tp @s ~ ~ ~
execute as @s[tag=!init] at @s if block ~ ~ ~ water positioned ~ 512 ~ positioned over world_surface if entity @p[distance=60..] run tag @s add init


##init

execute as @s[tag=init, tag=!active] run tp @s ~ 50 ~
execute as @s[tag=init, tag=!active] at @s if score @s cryptid.timer matches ..-40 run item replace entity @s armor.head with potion[custom_model_data=1383]
execute as @s[tag=!init2,tag=init] at @s run fill ~-8 ~10 ~-8 ~8 ~-50 ~8 water
execute as @s[tag=!init2,tag=init] run tag @s add init2


###END INIT


##partiucles
execute positioned ~ 512 ~ positioned over world_surface run particle minecraft:bubble_column_up ~ ~-1.2 ~ 15 0.9 15 0.1 250


###random
execute store result score @s cryptid.random run random value 1..2000


###dkshjdkjhsds

execute if score @s cryptid.random matches 1..30 run playsound minecraft:cryptid.ocean.tremor ambient @a ~ ~ ~ 3 0.6


##killfish
execute unless entity @s[tag=eating] as @e[distance=25..30] at @s if block ~ ~1 ~ #cryptid:water run function cryptid:action/kraken/drag
execute unless entity @s[tag=eating] as @e[distance=15..70] at @s if block ~ ~1 ~ #cryptid:water run function cryptid:action/kraken/draglite

###triggers
execute positioned ~ 512 ~ positioned over world_surface if entity @a[distance=0..15] run tag @s[tag=init] add active
execute positioned ~ 512 ~ positioned over world_surface positioned ~ ~-30 ~ if entity @a[distance=0..20] run tag @s[tag=init] add active

#tag @s[tag=init] add active


##active tick
execute as @s[tag=init, tag=active] at @s run function cryptid:action/kraken/active



##activate

execute as @s[tag=active, tag=!eating] at @s run function cryptid:action/kraken/eat


##kill when done eating or alive too long
execute as @s[tag=init, tag=!active] at @s if entity @p[distance=80..] if score @s cryptid.timer matches ..-5400 run kill @s
execute as @s[tag=init, tag=active] at @s if score @s cryptid.timer matches ..-300 run kill @s



##eat

execute as @s[tag=eating] if score @s cryptid.timer matches ..0 at @s run tp @s ~ ~-0.41 ~
