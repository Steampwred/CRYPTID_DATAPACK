scoreboard players remove @s cryptid.range 1

#particle minecraft:flame


execute if block ~ ~ ~ #minecraft:replaceable if score @s cryptid.range matches 1.. positioned ^ ^ ^0.35 run function cryptid:action/purifier/raycursor

execute unless block ~ ~ ~ #minecraft:replaceable at @e[tag=cryptid.cursor,type=armor_stand] if score @s cryptid.player.id = @n[tag=cryptid.cursor] cryptid.player.id run tag @n[tag=cryptid.cursor] add thatone
execute unless block ~ ~ ~ #minecraft:replaceable run tp @n[tag=thatone,type=armor_stand] ~ ~ ~
execute as @e[tag=current_cursor,tag=thatone,type=armor_stand] run tag @s remove thatone
#execute unless block ~ ~ ~ #minecraft:replaceable run say hit