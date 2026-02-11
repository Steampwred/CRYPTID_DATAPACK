 tp @s ~ ~ ~ ~170 0


execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s cryptid.player.random matches 1..4 run function cryptid:action/general/explodedeath


execute if score @s cryptid.player.random matches 1..200 run execute as @a[distance=0..15] at @s run effect give @s minecraft:slowness 1


execute if score @s cryptid.player.random matches 1..100 run execute as @a[distance=0..15] at @s run tp @s ~ ~ ~ ~ ~1
execute if score @s cryptid.player.random matches 100..200 run execute as @a[distance=0..15] at @s run tp @s ~ ~ ~ ~ ~-1
execute if score @s cryptid.player.random matches 200..300 run execute as @a[distance=0..25] at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s cryptid.player.random matches 300..400 run execute as @a[distance=0..25] at @s run tp @s ~ ~ ~ ~-1 ~

execute if score @s cryptid.player.random matches 200..225 run execute positioned ^ ^2 ^8 run function cryptid:action/meatmitestart
execute if score @s cryptid.player.random matches 225..255 run execute positioned ^ ^2 ^10 run function cryptid:action/meatmitestart
execute if score @s cryptid.player.random matches 200..225 run tp @s ~ ~ ~ ~33 ~
execute if score @s cryptid.player.random matches 200..255 run scoreboard players remove @a[distance=0..15] cryptid.player.harmony 800



playsound minecraft:ambient.nether_wastes.mood ambient @a[distance=0..30] ~ ~ ~ 10 0.1


particle dust_pillar{block_state:{Name:red_glazed_terracotta}} ~ ~2.25 ~ 10 1.5 10 0 200


