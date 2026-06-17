
## down
execute facing entity @e[type=armor_stand, tag=cryptid.kraken, sort=nearest, limit=1] feet run tp @s ^ ^-0.074 ^0.45


playsound minecraft:entity.squid.ambient ambient @a ~ ~ ~ 2 0.1
tag @s add cryptid.fakescreen
#effect give @s blindness 1 1 true
particle minecraft:underwater ~ ~ ~ 0.6 0.6 0.6 0.01 100