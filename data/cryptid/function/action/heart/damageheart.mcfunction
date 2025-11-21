playsound minecraft:entity.phantom.death ambient @a[distance=0..10] ~ ~ ~ 0.5 0.1




execute store result score @s cryptid.random run random value 1..200


execute if score @s cryptid.random matches 1 run function cryptid:events/underground/quake1
execute if score @s cryptid.random matches 2 run function cryptid:events/underground/quake2
execute if score @s cryptid.random matches 3 run function cryptid:events/underground/spawnhand
execute if score @s cryptid.random matches 4 run function cryptid:events/underground/threat1
execute if score @s cryptid.random matches 5 run function cryptid:events/underground/spawnscreamer
execute if score @s cryptid.random matches 6 run function cryptid:events/underground/tunnel
execute if score @s cryptid.random matches 7 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.random matches 8 run function cryptid:events/cryptid/flicker5

