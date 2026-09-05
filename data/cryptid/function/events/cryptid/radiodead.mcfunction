execute store result score @s cryptid.player.random run random value 1..5
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"chat.cryptid.radio.handler_tick_error","color":"red"}


tag @s add deadradio

playsound minecraft:cryptid.cloud.ambience ambient @a[distance=0..20] ~ ~100 ~ 1 0.7 0.3
