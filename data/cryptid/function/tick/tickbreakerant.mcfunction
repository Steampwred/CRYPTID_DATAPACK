damage @p[distance=0..8] 1 cryptid:chomp by @s
tag @p[distance=0..4] add cryptid.blackscreen
stopsound @p[distance=0..10]
execute store result score @s cryptid.random run random value 1..60

execute if score @s cryptid.random matches 1..5 unless block ~1 ~ ~ air run tp @s ~1 ~ ~
execute if score @s cryptid.random matches 10..15 unless block ~-1 ~ ~ air run tp @s ~-1 ~ ~
execute if score @s cryptid.random matches 15..18 unless block ~ ~1 ~ air run tp @s ~ ~1 ~
execute if score @s cryptid.random matches 20..23 unless block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute if score @s cryptid.random matches 25..30 unless block ~ ~ ~1 air run tp @s ~ ~ ~1
execute if score @s cryptid.random matches 30..35 unless block ~ ~ ~-1 air run tp @s ~ ~ ~-1

execute if score @s cryptid.random matches 1..35 run function cryptid:action/general/breakblock

attribute @s minecraft:generic.scale base set 0.01


execute if score @s cryptid.timer matches ..-750 run effect give @p[distance=0..20] minecraft:blindness 5 5 true
execute if score @s cryptid.timer matches ..-750 run kill @e[type=!player, distance=0..10]
