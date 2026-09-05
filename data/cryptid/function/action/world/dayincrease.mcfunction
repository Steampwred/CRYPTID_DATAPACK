scoreboard players set .current cryptid.eventcap 0
scoreboard players add .global cryptid.day 1
execute store result score .random cryptid.player.random run random value 1..5
execute if score .random cryptid.player.random matches 1..2 run execute as @e[tag=cryptid, type=!player, sort=random, limit=5, tag=!cryptid.lessertotem,tag=!cryptid.totem2,tag=!cryptid.eldertree] at @s run function cryptid:events/quietkill
execute if score .random cryptid.player.random matches 1..3 run scoreboard players add .global cryptid.eventcap 1
execute if score @s[scores={cryptid.player.random=1}] cryptid.player.random matches 1 run function cryptid:events/cryptid/flicker5
execute if score .random cryptid.player.random matches 2 run function cryptid:events/cryptid/flicker2
execute if score .global cryptid.world.fury matches 3.. run function cryptid:events/general/spawnanomaly

kill @e[tag=cryptid.spawner]




##cool events

tellraw @a ["",{"translate":"chat.cryptid.survival.day_prefix","color":"red"},{"score":{"name":".global","objective":"cryptid.day"},"color":"red"},{"translate":"chat.cryptid.survival.day_suffix","color":"red"}]
execute as @a at @s run playsound minecraft:cryptid.congratulations ambient @s ~ ~100 ~ 1000 1
execute as @a[sort=random, limit=2] at @s run function cryptid:events/cryptid/flicker5
