execute if score @s cryptid.player.maxharmony matches ..20500 run scoreboard players add cryptid.global cryptid.world.fury 10
execute if score @s cryptid.player.maxharmony matches 21000 run scoreboard players add cryptid.global cryptid.world.fury 25
execute if score @s cryptid.player.maxharmony matches 21500 run scoreboard players add cryptid.global cryptid.world.fury 45
execute if score @s cryptid.player.maxharmony matches 22000 run scoreboard players add cryptid.global cryptid.world.fury 50
execute if score @s cryptid.player.maxharmony matches 22500 run scoreboard players add cryptid.global cryptid.world.fury 60




execute if score @s cryptid.player.maxharmony matches 0..22000 run scoreboard players add @s cryptid.player.maxharmony 500

execute if score @s cryptid.player.maxharmony matches 22500.. run damage @s 4 cryptid:chomp by @s

tellraw @a ["",{"selector":"@p","color":"dark_red"},{"text":" has increased their maximum harmony to ","color":"dark_red"},{"score":{"name":"@p","objective":"cryptid.player.maxharmony"},"color":"dark_red"},{"text":"!","color":"dark_red"}]


playsound minecraft:cryptid.cloud.ambience ambient @s

particle minecraft:happy_villager ~ ~1 ~ 2 2 2 10 400

advancement revoke @s only cryptid:usebalm