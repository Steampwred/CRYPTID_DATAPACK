
execute if block ~ ~ ~ #cryptid:fleshy align xyz positioned ~0.5 ~ ~0.5 run function cryptid:action/ritual/athame/hitblock

scoreboard players remove @s cryptid.range 1


execute if score @s cryptid.range matches ..1 run kill @s 

execute if score @s cryptid.range matches 1.. if block ~ ~ ~ #enchantment_power_transmitter positioned ^ ^ ^0.25 run function cryptid:action/ritual/athame/mhandraycast

execute unless block ~ ~ ~ #enchantment_power_transmitter positioned ^ ^ ^0.5 run kill @s