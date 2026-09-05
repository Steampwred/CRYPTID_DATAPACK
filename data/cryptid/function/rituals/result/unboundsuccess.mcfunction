scoreboard players add @a[distance=..20] cryptid.player.harmony 18000
scoreboard players remove .global cryptid.world.fury 150
#function cryptid:rituals/initial/orificecraving

execute store result score @s cryptid.player.random run random value 1..8
execute if score @s cryptid.player.random matches 1 run tellraw @a[distance=..10] {"translate":"chat.cryptid.satiated.1","color":"red","bold":true}
execute if score @s cryptid.player.random matches 2 run tellraw @a[distance=..10] {"translate":"chat.cryptid.satiated.2","color":"red","bold":true}
execute if score @s cryptid.player.random matches 3 run tellraw @a[distance=..10] {"translate":"chat.cryptid.satiated.3","color":"red","bold":false}
execute if score @s cryptid.player.random matches 4 run tellraw @a[distance=..10] {"translate":"chat.cryptid.satiated.4","color":"red","bold":false}
execute if score @s cryptid.player.random matches 5 run tellraw @a[distance=..10] {"translate":"chat.cryptid.satiated.5","color":"red","bold":true}
execute if score @s cryptid.player.random matches 6 run tellraw @a[distance=..10] {"translate":"chat.cryptid.satiated.6","color":"red","bold":true}
execute if score @s cryptid.player.random matches 7 run tellraw @a[distance=..10] {"translate":"chat.cryptid.satiated.7","color":"red","bold":true}
execute if score @s cryptid.player.random matches 8 run tellraw @a[distance=..10] {"translate":"chat.cryptid.satiated.8","with":[{"selector":"@p"}],"color":"dark_red"}