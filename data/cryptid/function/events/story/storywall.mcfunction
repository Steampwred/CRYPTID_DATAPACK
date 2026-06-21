

playsound minecraft:cryptid.earth.ambient ambient @s

execute if score @s cryptid.wallspawn matches 1 run tellraw @s {"text":"Something in the earth has noticed your presence","color":"dark_red"}
execute if score @s cryptid.wallspawn matches 1 run function cryptid:events/cryptid/flicker2

execute if score @s cryptid.wallspawn matches 2 run tellraw @s {"text":"Every block you break wakes it from its slumber","color":"dark_red"}
execute if score @s cryptid.wallspawn matches 2 run function cryptid:events/cryptid/flicker5

execute if score @s cryptid.wallspawn matches 3 run tellraw @s {"text":"The end draws near","color":"dark_red"}
execute if score @s cryptid.wallspawn matches 3 run function cryptid:events/cryptid/flicker5
execute if score @s cryptid.wallspawn matches 3 run function cryptid:events/underground/tunnel


execute if score @s cryptid.wallspawn matches 4 run execute positioned ^ ^-20 ^60 run function cryptid:events/underground/wall

execute if score @s cryptid.wallspawn matches 4 run tag @p add wall.chasing
execute if score @s cryptid.wallspawn matches 4 run stopsound @a
execute if score @s cryptid.wallspawn matches 4 run playsound minecraft:cryptid.wall.dig ambient @p







##end
scoreboard players add @s cryptid.wallspawn 1
execute if score @s cryptid.wallspawn matches ..-1 run scoreboard players set @s cryptid.wallspawn 0
execute if score @s cryptid.wallspawn matches 5.. run scoreboard players set @s cryptid.wallspawn 0

