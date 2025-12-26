execute store result score @s cryptid.player.random run random value 1..1000

execute if entity @p[distance=0..10] if score @s cryptid.player.random matches 1 run execute as @a[distance=0..28] at @s run scoreboard players remove @s cryptid.player.harmony 2000
execute if entity @p[distance=0..10] if score @s cryptid.player.random matches 1 run execute as @a[distance=0..28] at @s run tellraw @p "You shouldn't be near creatures like that"
execute if entity @p[distance=0..10] if score @s cryptid.player.random matches 2 run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 netherrack replace #logs
execute if entity @p[distance=0..10] if score @s cryptid.player.random matches 3 run function cryptid:events/general/ant
execute if entity @p[distance=0..10] if score @s cryptid.player.random matches 4 run function cryptid:events/node/block
execute if entity @p[distance=0..10] if score @s cryptid.player.random matches 5 run function cryptid:events/general/sinkhole



execute if score @s cryptid.player.random matches 1..5 run function cryptid:action/cursedevent

execute as @s[tag=cursed.tokill] run function cryptid:events/cryptid/sethostile
##cursed to kill doesnt actually kill anything adding this just in creatures
execute as @s[tag=cursed.tokill] at @s run function cryptid:action/general/explodedeath