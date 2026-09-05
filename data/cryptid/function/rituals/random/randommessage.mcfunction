execute store result score @s cryptid.player.random run random value 1..25

execute if score @s cryptid.player.random matches 1 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.1","color":"red"}]
execute if score @s cryptid.player.random matches 2 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.2","color":"red"}]
execute if score @s cryptid.player.random matches 3 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.3","color":"red"}]
execute if score @s cryptid.player.random matches 4 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.4","color":"red"}] 
execute if score @s cryptid.player.random matches 5 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.5","color":"red"}]
execute if score @s cryptid.player.random matches 6 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.6","color":"red"}]
execute if score @s cryptid.player.random matches 7 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.7","color":"red"}]
execute if score @s cryptid.player.random matches 8 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.8","color":"red"}]
execute if score @s cryptid.player.random matches 9 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.9","color":"red"}]
execute if score @s cryptid.player.random matches 10 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.10","color":"red"}]
execute if score @s cryptid.player.random matches 11 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.11","color":"red"}]
execute if score @s cryptid.player.random matches 12 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.12","color":"red"}]
execute if score @s cryptid.player.random matches 13 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.13","color":"red"}]
execute if score @s cryptid.player.random matches 14 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.14","color":"red"}]
execute if score @s cryptid.player.random matches 15 run tellraw @a[distance=..12] [{"translate":"chat.cryptid.ritual_speak.15","color":"red"}]

function cryptid:rituals/speakfx