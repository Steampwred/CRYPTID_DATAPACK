execute unless entity @s[tag=init] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["cryptid.cursor"]}

## link to player
execute unless entity @s[tag=init] run scoreboard players operation @s cryptid.player.id = @p cryptid.player.id
execute unless entity @s[tag=init] run scoreboard players operation @n[tag=cryptid.cursor,distance=..1,type=armor_stand] cryptid.player.id = @s cryptid.player.id

tag @s add init
#execute store result score @s cryptid.player.random run random value 1..1000




## match cursor tp to it
execute at @e[tag=cryptid.cursor,type=armor_stand] if score @s cryptid.player.id = @n[tag=cryptid.cursor] cryptid.player.id run tag @n[tag=cryptid.cursor] add current_cursor
tp @s ^ ^ ^0.3 facing entity @n[tag=cryptid.cursor,type=armor_stand,tag=current_cursor]
execute if score @s cryptid.timer matches ..-900 as @e[tag=cryptid.cursor,tag=current_cursor,type=armor_stand,distance=..100] run kill @n[tag=cryptid.cursor]
execute as @e[tag=cryptid.cursor,tag=current_cursor,type=armor_stand,distance=..100] run tag @s remove current_cursor

execute if score @s cryptid.timer matches ..-900 run kill @s

execute if score .heartbeat cryptid.globalevent matches 1 run playsound minecraft:block.beacon.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.1

place feature cryptid:calcifyflesh ~ ~ ~




execute if score .heartbeat cryptid.globalevent matches 1 run function cryptid:action/purifier/cursorid

particle enchant ~ ~1.5 ~ 0.1 0.1 0.1 10 120
particle end_rod ~ ~1.5 ~ 0.1 0.1 0.1 0.16 20
particle sonic_boom ~ ~1.5 ~ 0.2 0.2 0.2 1 3

