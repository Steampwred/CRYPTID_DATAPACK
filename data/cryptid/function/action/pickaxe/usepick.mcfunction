scoreboard players add @s cryptid.pick.cooldown 1000

damage @s 5 cryptid:bleedout
playsound minecraft:entity.allay.death ambient @a ~ ~ ~ 1 0.1
particle minecraft:vault_connection ~ ~2 ~ 0.5 0.5 0.5 1 600

fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:crimson_fungus replace minecraft:short_grass
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:crimson_hyphae replace #minecraft:logs
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 crimson_nylium replace #minecraft:moss_replaceable
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 netherrack replace #minecraft:base_stone_overworld

tp @s ~ ~ ~ facing entity @e[type=vindicator, tag=cryptid.vorheart, limit=1, sort=nearest]

execute store result score @s cryptid.player.random run random value 1..10

execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.1","color":"dark_red"}
execute if score @s cryptid.player.random matches 2 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.2","color":"dark_red"}
execute if score @s cryptid.player.random matches 3 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.3","color":"dark_red"}
execute if score @s cryptid.player.random matches 4 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.4","color":"dark_red"}
execute if score @s cryptid.player.random matches 5 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.5","color":"dark_red"}
execute if score @s cryptid.player.random matches 6 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.6","color":"dark_red"}
execute if score @s cryptid.player.random matches 7 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.7","color":"dark_red"}
execute if score @s cryptid.player.random matches 8 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.8","color":"dark_red"}
execute if score @s cryptid.player.random matches 9 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.9","color":"dark_red"}
execute if score @s cryptid.player.random matches 10 run tellraw @s {"translate":"chat.cryptid.pickaxe.whisper.10","color":"dark_red"}
