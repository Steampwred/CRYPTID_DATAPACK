execute store result score @s cryptid.player.random run random value 1..1000000


execute if score @s cryptid.player.random matches 1..3 run function cryptid:events/quietkill

execute if score @s cryptid.player.random matches 2..15 run execute at @p run spreadplayers ~ ~ 20 40 false @s
execute if score @s cryptid.player.random matches 2..15 run execute at @p run tp @s ~ ~80 ~

execute if score @s cryptid.player.random matches 15..20 run execute at @p run function cryptid:events/cryptid/chunkgrass
execute if score @s cryptid.player.random matches 20..25 run execute at @p run function cryptid:events/cryptid/chunkred
execute if score @s cryptid.player.random matches 25..30 run execute at @p run function cryptid:events/cryptid/chunktorch
execute if score @s cryptid.player.random matches 30..35 run execute at @p run function cryptid:events/cryptid/chunktall

tag @a[distance=0..50] add cryptid.fakescreen

##trigger
execute if entity @p[distance=0..25] at @s run time add 100
execute if entity @p[distance=0..25] at @s run tag @s add cryptid.activatedfractal

##movement off the ball
execute if entity @s[tag=cryptid.activatedfractal] run tp @s ~ ~-0.15 ~ ~-3 ~
execute if entity @s[tag=cryptid.activatedfractal2] run tp @s ^ ^ ^0.2 facing entity @p



##activate when look
execute if entity @s[tag=cryptid.lookingfractal] run execute store result score @s cryptid.player.random run random value 1..40

##sounds
execute if score @s[tag=!cryptid.activatedfractal, tag=!cryptid.activatedfractal2] cryptid.player.random matches 10..20 run playsound minecraft:cryptid.curator.ambient ambient @a[distance=0..90] ~ ~30 ~ 28 1 1.0
execute if score @s[tag=!cryptid.activatedfractal,tag=!cryptid.activatedfractal2] cryptid.player.random matches 10..20 run tag @s add cryptid.activatedfractal


execute if score @s[tag=!cryptid.activatedfractal2,tag=!cryptid.activatedfractal] cryptid.player.random matches 21..30 run playsound minecraft:cryptid.curator.ambient ambient @a[distance=0..90] ~ ~30 ~ 28 1 1.0
execute if score @s[tag=!cryptid.activatedfractal2,tag=!cryptid.activatedfractal] cryptid.player.random matches 21..30 run tag @s add cryptid.activatedfractal2



##kjill in void
execute unless block ~ ~20 ~ air run function cryptid:events/quietkill

##spiral
execute if entity @s[tag=cryptid.activatedfractal] run execute positioned ~ ~10 ~ run setblock ^1 ^6 ^7 minecraft:red_terracotta
execute if entity @s[tag=cryptid.activatedfractal] run execute positioned ~ ~10 ~ run setblock ^4 ^3 ^1 minecraft:crimson_nylium
execute if entity @s[tag=cryptid.activatedfractal] run execute positioned ~ ~10 ~ run setblock ^2 ^-2 ^-1 minecraft:red_terracotta


execute if entity @p[distance=0..20] run function cryptid:events/quietkill
execute as @p[distance=0..20] at @s run stopsound @s
execute as @p[distance=0..20] at @s run effect give @s slow_falling 20 1 true
execute as @p[distance=0..20] at @s run tp @s ~40 ~100 ~40

##remove tag
tag @s remove cryptid.lookingfractal


