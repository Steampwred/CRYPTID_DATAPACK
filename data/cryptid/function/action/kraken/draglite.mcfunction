execute facing entity @e[type=armor_stand, tag=cryptid.kraken, sort=nearest, limit=1] feet run tp @s ^ ^-0.01 ^0.06

execute store result score @s cryptid.random run random value 1..3

execute unless score @s cryptid.random matches 1 run return fail
playsound minecraft:entity.squid.ambient ambient @a ~ ~ ~ 0.1 0.1
particle minecraft:underwater ~ ~ ~ 0.6 0.6 0.6 0.01 10

