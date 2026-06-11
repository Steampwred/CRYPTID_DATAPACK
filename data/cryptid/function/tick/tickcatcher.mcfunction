execute store result score @s cryptid.player.random run random value 1..300

##passive
execute as @e[tag=cryptid.vorheart, distance=0..70] run kill @s

execute if score .globaltime cryptid.time matches 13000..24000 run execute if score @s cryptid.player.random matches 1 run execute as @e[tag=cryptid, distance=0..120, limit=10, sort=random] run damage @s 0 minecraft:player_attack by @p

execute if score .globaltime cryptid.time matches 13000..24000 run execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.caveeye.ambient ambient @a[distance=0..20]

execute if score @s cryptid.player.random matches 1..50 as @e[tag=cryptid.infested, distance=0..25,type=#cryptid:infestable,limit=2] at @s run function cryptid:action/hostile/cure

##bad

execute store result score @s cryptid.player.random run random value 1..80000
execute if score .globaltime cryptid.time matches 13000..24000 run execute if score @s cryptid.player.random matches 1 run function cryptid:events/node/mobs


particle minecraft:white_smoke ~ ~1 ~ 0.4 0.8 0.4 0.0001 2





##bnreak
execute if block ~ ~-1 ~ air run particle item{item:{id:stick}} ~ ~1 ~ 0.5 0.5 0.5 0.2 200
execute if block ~ ~-1 ~ air run playsound minecraft:entity.item.break ambient @a[distance=0..20] ~ ~ ~ 1 0.2
execute if block ~ ~-1 ~ air run execute as @p at @s run function cryptid:action/give/givecatcher
execute if block ~ ~-1 ~ air run kill @s