execute unless entity @s[tag=init] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["cryptid.cursor"]}

## link to player
execute unless entity @s[tag=init] run scoreboard players operation @s cryptid.player.id = @p cryptid.player.id
execute unless entity @s[tag=init] run scoreboard players operation @n[tag=cryptid.cursor,distance=..1,type=armor_stand] cryptid.player.id = @s cryptid.player.id

tag @s add init
#execute store result score @s cryptid.player.random run random value 1..1000




## match cursor tp to it
execute at @e[tag=cryptid.cursor,type=armor_stand] if score @s cryptid.player.id = @n[tag=cryptid.cursor] cryptid.player.id run tag @n[tag=cryptid.cursor] add current_cursor

execute unless entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor,distance=..1.5] run tp @s ^ ^ ^0.35 facing entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor] eyes
execute if entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor,distance=10..] run tp @s ^ ^ ^1 facing entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor] eyes
execute if entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor,distance=30..] run tp @s ^ ^ ^1.5 facing entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor] eyes


execute if score @s cryptid.timer matches ..-900 at @e[tag=cryptid.cursor,type=armor_stand] if score @s cryptid.player.id = @n[tag=cryptid.cursor,type=armor_stand] cryptid.player.id run kill @n[tag=cryptid.cursor,type=armor_stand]

execute if score @s cryptid.timer matches ..-900 run kill @s

execute if score .heartbeat cryptid.globalevent matches 1 run playsound minecraft:block.beacon.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.1

place feature cryptid:calcifyflesh ~ ~-5 ~
place feature cryptid:calcifyflesh ~ ~4 ~
fillbiome ~-10 ~-10 ~-10 ~10 ~10 ~10 cryptid:petrified_fields replace cryptid:soma
fillbiome ~-10 ~-10 ~-10 ~10 ~10 ~10 cryptid:petrified_fields replace cryptid:empty


execute if score .heartbeat cryptid.globalevent matches 6 at @a if score @s cryptid.player.id = @p cryptid.player.id as @p at @s anchored eyes run function cryptid:action/purifier/initraycursor
execute if score .heartbeat cryptid.globalevent matches 12 at @a if score @s cryptid.player.id = @p cryptid.player.id as @p at @s anchored eyes run function cryptid:action/purifier/initraycursor
execute if score .heartbeat cryptid.globalevent matches 18 at @a if score @s cryptid.player.id = @p cryptid.player.id as @p at @s anchored eyes run function cryptid:action/purifier/initraycursor
execute if score .heartbeat cryptid.globalevent matches 24 at @a if score @s cryptid.player.id = @p cryptid.player.id as @p at @s anchored eyes run function cryptid:action/purifier/initraycursor


execute if score .heartbeat cryptid.globalevent matches 1 run data merge entity @s {Fire:9999s}
particle enchant ~ ~1 ~ 0.1 0.1 0.1 10 120
particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.16 20
particle sonic_boom ~ ~1 ~ 0.2 0.2 0.2 1 3

