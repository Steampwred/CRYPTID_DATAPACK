
## down
execute facing entity @e[type=armor_stand, tag=cryptid.kraken, sort=nearest, limit=1] feet run tp @s ^ ^-0.074 ^0.45


tag @s add cryptid.fakescreen

execute store result score @s cryptid.random run random value 1..5

tag @s add cryptid.glitchscreen
execute unless score @s cryptid.random matches 1 run return fail

 playsound minecraft:cryptid.ambient.hand ambient @s ~ ~ ~ 3 1

particle minecraft:underwater ~ ~ ~ 0.6 0.6 0.6 0.01 50