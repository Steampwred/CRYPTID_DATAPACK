execute if entity @s[nbt={HurtTime:9s}] run function cryptid:action/heart/damageheart
# bugged for now, requires tick marker to check death 
#execute if entity @s[nbt={DeathTime:1s}] run function cryptid:action/heart/heartdeath

execute store result score @s cryptid.random run random value 1..3000



###portal
execute if score .global cryptid.world.fury matches 115.. if score @s cryptid.random matches 1..2 run tellraw @p[distance=0..10] {"text":"The gate to hell has opened","color":"red"}
execute if score .global cryptid.world.fury matches 115.. if score @s cryptid.random matches 1..2 run execute as @p[distance=0..10] at @s run function cryptid:action/portal/create


execute if score @s cryptid.random matches 1 run function cryptid:events/underground/quake1
execute if score @s cryptid.random matches 2 run function cryptid:events/underground/quake2
execute if score @s cryptid.random matches 3 run function cryptid:events/underground/spawnhand
execute if score @s cryptid.random matches 4 run function cryptid:events/underground/threat1
execute if score @s cryptid.random matches 5 run function cryptid:events/underground/spawnscreamer
execute if score @s cryptid.random matches 6 run function cryptid:events/underground/tunnel
execute if score @s cryptid.random matches 7 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.random matches 8 run function cryptid:events/cryptid/flicker5

