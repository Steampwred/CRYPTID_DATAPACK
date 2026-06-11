execute at @s[tag=!init] if entity @p[distance=..2.3] run function cryptid:action/purifier/initpurifier
#execute store result score @s cryptid.player.random run random value 1..1000




## match cursor tp to it
execute at @e[tag=cryptid.cursor,type=armor_stand] if score @s cryptid.player.id = @n[tag=cryptid.cursor] cryptid.player.id run tag @n[tag=cryptid.cursor] add current_cursor

execute unless entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor,distance=..2] run tp @s ^ ^ ^0.7 facing entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor] eyes
execute if entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor,distance=10..] run tp @s ^ ^ ^1.3 facing entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor] eyes
execute if entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor,distance=30..] run tp @s ^ ^ ^2 facing entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor] eyes

execute if score @s cryptid.timer matches 1 run function cryptid:action/purifier/despawn



execute if score .heartbeat cryptid.globalevent matches 1 run playsound minecraft:block.beacon.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.1


function cryptid:action/purifier/cleanser



execute if score .heartbeat cryptid.globalevent matches 6 at @a if score @s cryptid.player.id = @p cryptid.player.id as @p at @s anchored eyes run function cryptid:action/purifier/initraycursor
execute if score .heartbeat cryptid.globalevent matches 12 at @a if score @s cryptid.player.id = @p cryptid.player.id as @p at @s anchored eyes run function cryptid:action/purifier/initraycursor
execute if score .heartbeat cryptid.globalevent matches 18 at @a if score @s cryptid.player.id = @p cryptid.player.id as @p at @s anchored eyes run function cryptid:action/purifier/initraycursor
execute if score .heartbeat cryptid.globalevent matches 24 at @a if score @s cryptid.player.id = @p cryptid.player.id as @p at @s anchored eyes run function cryptid:action/purifier/initraycursor


execute if score .heartbeat cryptid.globalevent matches 1 run data merge entity @s {Fire:9999s}
execute if entity @s[tag=init] run particle enchant ~ ~1 ~ 0.1 0.1 0.1 10 120
particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.16 10
execute if entity @s[tag=init] run particle sonic_boom ~ ~1 ~ 0.2 0.2 0.2 1 3

