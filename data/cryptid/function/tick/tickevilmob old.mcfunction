execute store result score @s cryptid.player.random run random value 1..4000

execute if score @s cryptid.player.random matches 1..3 run function cryptid:events/cryptid/sethostile

execute if score @s cryptid.player.random matches 10 run function cryptid:action/hostile/unhostile

execute if score @s cryptid.player.random matches 10 run tp @e[tag=cryptid.evilcore, type=minecraft:zombified_piglin, sort=nearest, limit=1] ~ ~-100 ~

execute unless entity @e[tag=cryptid.evilcore, type=zombified_piglin, sort=nearest, limit=1, distance=0..2] run function cryptid:action/hostile/unhostile

execute if entity @p[distance=0..8] run effect give @s minecraft:speed 1 0 true