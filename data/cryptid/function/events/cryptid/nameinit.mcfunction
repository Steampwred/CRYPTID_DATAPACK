execute store result score @s cryptid.player.random run random value 1..20000

execute if score @s cryptid.player.random matches 1 run data merge entity @s {CustomName:'{"translate":"cryptid.name.1"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 2 run data merge entity @s {CustomName:'{"translate":"cryptid.name.2"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 3 run data merge entity @s {CustomName:'{"translate":"cryptid.name.3"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 4 run data merge entity @s {CustomName:'{"translate":"cryptid.name.4"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 5 run data merge entity @s {CustomName:'{"translate":"cryptid.name.5"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 6 run data merge entity @s {CustomName:'{"translate":"cryptid.name.6"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 7 run data merge entity @s {CustomName:'{"translate":"cryptid.name.7"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 8 run data merge entity @s {CustomName:'{"translate":"cryptid.name.8"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 9 run data merge entity @s {CustomName:'{"translate":"cryptid.name.9"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 10 run data merge entity @s {CustomName:'{"translate":"cryptid.name.10"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 11 run data merge entity @s {CustomName:'{"translate":"cryptid.name.11"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 12 run data merge entity @s {CustomName:'{"translate":"cryptid.name.12"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 13 run data merge entity @s {CustomName:'{"translate":"cryptid.name.13"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 14 run data merge entity @s {CustomName:'{"translate":"cryptid.name.14"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 15 run data merge entity @s {CustomName:'{"translate":"cryptid.name.15"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 16 run data merge entity @s {CustomName:'{"translate":"cryptid.name.16"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 17 run data merge entity @s {CustomName:'{"translate":"cryptid.name.17"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 18 run data merge entity @s {CustomName:'{"translate":"cryptid.name.18"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 19 run data merge entity @s {CustomName:'{"translate":"cryptid.name.19"}',CustomNameVisible:1b,NoAI:1}
execute if score @s cryptid.player.random matches 20 run data merge entity @s {CustomName:'{"translate":"cryptid.name.20"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 21 run data merge entity @s {CustomName:'{"translate":"cryptid.name.21"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 22 run data merge entity @s {CustomName:'{"translate":"cryptid.name.22"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 23 run data merge entity @s {CustomName:'{"translate":"cryptid.name.23"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 24 run data merge entity @s {CustomName:'{"translate":"cryptid.name.24"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 25 run data merge entity @s {CustomName:'{"translate":"cryptid.name.25"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 26 run data merge entity @s {CustomName:'{"translate":"cryptid.name.26"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 27 run data merge entity @s {CustomName:'{"translate":"cryptid.name.27"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 28 run data merge entity @s {CustomName:'{"translate":"cryptid.name.28"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 29 run data merge entity @s {CustomName:'{"translate":"cryptid.name.29"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 30 run data merge entity @s {CustomName:'{"translate":"cryptid.name.30"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 31 run data merge entity @s {CustomName:'{"translate":"cryptid.name.31"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 32 run data merge entity @s {CustomName:'{"translate":"cryptid.name.32"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 33 run data merge entity @s {CustomName:'{"translate":"cryptid.name.33"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 34 run data merge entity @s {CustomName:'{"translate":"cryptid.name.34"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 35 run data merge entity @s {CustomName:'{"translate":"cryptid.name.35"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 36 run data merge entity @s {CustomName:'{"translate":"cryptid.name.36"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 38 run data merge entity @s {CustomName:'{"translate":"cryptid.name.37"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 39 run data merge entity @s {CustomName:'{"translate":"cryptid.name.38"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 40 run data merge entity @s {CustomName:'{"translate":"cryptid.name.39"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 41 run data merge entity @s {CustomName:'{"translate":"cryptid.name.40"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 42 run data merge entity @s {CustomName:'{"translate":"cryptid.name.41"}',CustomNameVisible:1b}
execute if score @s cryptid.player.random matches 43 run data merge entity @s {CustomName:'{"translate":"cryptid.name.42"}',CustomNameVisible:1b}

execute if score @s cryptid.player.random matches 1..90 run tag @s add cryptid.cursed
execute if score @s cryptid.player.random matches 1..90 run tag @s add cryptid
execute if score @s cryptid.player.random matches 1..90 run function cryptid:action/general/spawntickmarker {"name":"tickcursed"}


execute if score .global cryptid.day matches 8.. if entity @s[tag=!cryptid,type=!marker,type=!armor_stand,type=!zombified_piglin,type=!#cryptid:nonliving] run function cryptid:action/hostile/infestinit

execute if score @p cryptid.player.harmony matches -20000..-10000 run execute store result score @s cryptid.player.random run random value 1..1000

execute if score @p cryptid.player.harmony matches -10000..-5000 run execute store result score @s cryptid.player.random run random value 1..1600

execute if score @p cryptid.player.harmony matches -5000..5000 run execute store result score @s cryptid.player.random run random value 1..2500

execute if score @p cryptid.player.harmony matches 5000..20000 run execute store result score @s cryptid.player.random run random value 1..3200


execute if score @s cryptid.player.random matches 1..12 run function cryptid:events/underground/spawndecimator

execute if score @s cryptid.player.random matches 20..24 if score .global cryptid.world.fury matches 1200.. run function cryptid:events/underground/spawndecimator
execute if score @s cryptid.player.random matches 18..19 if score .global cryptid.world.fury matches 1600.. run function cryptid:events/cryptid/chomper

##spawn tumors, this can be reworked later

execute if score .global cryptid.player.random matches 40..45 if entity @a[distance=1..70] at @s if entity @s[y=-21, dy=60] run function cryptid:events/general/spawntumor
execute if score .global cryptid.player.random matches 40..45 if entity @a[distance=1..70] at @s if entity @s[y=-21, dy=60] run kill @s


execute as @s at @s if score @s[y=53,dy=-128] cryptid.player.random matches 38..42 run function cryptid:events/cryptid/grabber

tag @s add cryptid.nameinit