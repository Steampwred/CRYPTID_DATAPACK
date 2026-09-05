playsound minecraft:cryptid.earth.ambient ambient @s

execute if score @s cryptid.wavespawn matches 1 run tellraw @s {"translate":"cryptid.event.wave.shadows","color":"dark_red"}
execute if score @s cryptid.wavespawn matches 1 run function cryptid:events/cryptid/flicker2

execute if score @s cryptid.wavespawn matches 2 run tellraw @s {"translate":"cryptid.event.wave.noticed","color":"dark_red"}
execute if score @s cryptid.wavespawn matches 2 run function cryptid:events/cryptid/flicker2

execute if score @s cryptid.wavespawn matches 3 run tellraw @s {"translate":"cryptid.event.wave.torches","color":"dark_red"}
execute if score @s cryptid.wavespawn matches 3 run function cryptid:events/cryptid/flicker5
execute if score @s cryptid.wavespawn matches 3 run function cryptid:events/cryptid/lampost


execute if score @s cryptid.wavespawn matches 4 run tellraw @s {"translate":"cryptid.event.wave.awoken","color":"dark_red"}
execute if score @s cryptid.wavespawn matches 4 run execute positioned ^ ^-10 ^60 run function cryptid:events/night/darkwave







##end
scoreboard players add @s cryptid.wavespawn 1
execute if score @s cryptid.wavespawn matches ..-1 run scoreboard players set @s cryptid.wavespawn 0
execute if score @s cryptid.wavespawn matches 5.. run scoreboard players set @s cryptid.wavespawn 0