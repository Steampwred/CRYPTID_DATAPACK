
##lootablehandler
data merge entity @s {DeathLootTable:"cryptid:entities/heart"}
##tphandler


##top or bottom
execute store result score @s cryptid.random run random value 1..2

execute if score @s cryptid.random matches 1 run spreadplayers ~ ~ 70 100 false @s

execute if score @s cryptid.random matches 2 run spreadplayers ~ ~ 70 100 under 0 false @s

##check for air
execute positioned as @s if block ~ ~5 ~ air run tp @s ~ ~-46 ~
execute positioned as @s if block ~ ~5 ~ air run tp @s ~ ~-46 ~
execute positioned as @s if block ~ ~5 ~ air run tp @s ~ ~-46 ~
execute positioned as @s if block ~ ~5 ~ air run tp @s ~ ~-46 ~
execute positioned as @s if block ~ ~4 ~ air run tp @s ~ ~-46 ~
execute positioned as @s if block ~ ~3 ~ air run tp @s ~ ~-46 ~
execute positioned as @s if block ~ ~2 ~ air run tp @s ~ ~-46 ~
execute positioned as @s if block ~ ~1 ~ air run tp @s ~ ~-46 ~



tag @s remove heartbuilt
##spawning initation


##just in case~
effect give @s minecraft:invisibility infinite 1 true


##end init
tag @s add startedheart
