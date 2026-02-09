playsound minecraft:cryptid.sky.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.6
weather thunder 800


## Enviornment effect
execute store result score @s cryptid.player.random run random value 1..10

execute if score @s cryptid.player.random matches 1..3 run function cryptid:events/sky/ray
execute if score @s cryptid.player.random matches 5 run function cryptid:events/sky/spiral
execute if score @s cryptid.player.random matches 6..7 run function cryptid:events/sky/octopus
execute if score @s cryptid.player.random matches 10 run function cryptid:events/sky/vine
execute if score @s cryptid.player.random matches 2..4 run function cryptid:events/sky/lowskyroamer

## Threat
execute store result score @s cryptid.player.random run random value 1..40

execute if score @s cryptid.player.random matches 1..15 run function cryptid:events/sky/roamingentity
execute if score @s cryptid.player.random matches 16..23 run function cryptid:events/sky/cloud
execute if score @s cryptid.player.random matches 23..27 run function cryptid:events/sky/whale

execute if score @s cryptid.player.random matches 30..35 run function cryptid:events/sky/skygrabber
execute if score @s cryptid.player.random matches 38..39 run function cryptid:events/sky/eyewatcher
execute if score @s cryptid.player.random matches 40 run function cryptid:events/sky/fathead


scoreboard players reset @s cryptid.random
advancement revoke @a only cryptid:stealpyramid