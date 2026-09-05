execute if score .global cryptid.skytime matches -500.. run scoreboard players remove .global cryptid.skytime 1
execute if score .global cryptid.skytime matches -501 run scoreboard players reset .global cryptid.skytime
execute unless score .global cryptid.skytime matches -2147483648..2147483647 run kill @s


execute if score .global cryptid.skytime matches 200..1201 rotated as @p at @p anchored eyes run tp @s ^ ^0.5 ^2.5

execute store result score @s cryptid.random run random value 1..200

execute if score @p cryptid.deaths matches 1.. run scoreboard players reset .global cryptid.skytime
execute if score @p cryptid.deaths matches 1.. run stopsound @p
execute if score @p cryptid.deaths matches 1.. run kill @s



execute as @p unless predicate cryptid:worldsky_check run return fail

execute if score .global cryptid.skytime matches 200..600 run tag @a[distance=..60] add cryptid.blackscreen

execute if score @s cryptid.random matches 1..2 if score .global cryptid.skytime matches 900..1000 run tellraw @a {"translate":"cryptid.message.error.freedom_approaching","color":"red"}
execute if score @s cryptid.random matches 1..2 if score .global cryptid.skytime matches 750..900 run tellraw @a {"translate":"cryptid.message.warning.shader_dropped","color":"red"}
execute if score @s cryptid.random matches 1..5 if score .global cryptid.skytime matches 450..750 as @a if predicate cryptid:worldsky_check run tellraw @s {"translate":"cryptid.message.warning.y_level_high","color":"red"}
execute if score @s cryptid.random matches 1..5 if score .global cryptid.skytime matches 250..450 run tellraw @a {"translate":"cryptid.message.warning.get_inside_earth","color":"red"}

execute if score @s cryptid.random matches 185..200 if score .global cryptid.skytime matches 450..550 as @a if predicate cryptid:worldsky_check run tellraw @s [{"translate":"cryptid.message.warning.prefix","color":"red"},{"translate":"cryptid.message.warning.y_level_high","color":"red","bold": true }]
execute if score @s cryptid.random matches 185..200 if score .global cryptid.skytime matches 250..300 run tellraw @a {"translate":"cryptid.message.warning.get_inside_earth","color":"red"}


execute if score .global cryptid.skytime matches 250..260 run playsound minecraft:cryptid.screen.corrupted ambient @a[distance=..60] ~ ~ ~ 10000 1


execute if score .global cryptid.skytime matches 200 run stopsound @a[distance=..60]
execute if score .global cryptid.skytime matches 200 as @a[distance=..60] run attribute @s minecraft:generic.gravity modifier add 1301 0.25 add_value
execute if score .global cryptid.skytime matches 200 run tp @a[distance=..60] ~ ~2798 ~
execute if score .global cryptid.skytime matches 200 run item replace entity @s armor.head with air