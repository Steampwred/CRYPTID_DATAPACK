clear @s sugar[minecraft:custom_data~{cryptid.usedhoney:1b}]

scoreboard players add cryptid.global cryptid.world.fury 10

execute if score @s cryptid.player.maxharmony matches 0..22000 run scoreboard players add @s cryptid.player.maxharmony 500

execute if score @s cryptid.player.maxharmony matches 22500.. run damage @s 4 cryptid:chomp by @s

tellraw @a ["",{"selector":"@p","color":"dark_red"},{"text":" has increased their maximum harmony to ","color":"dark_red"},{"score":{"name":"@p","objective":"cryptid.player.maxharmony"},"color":"dark_red"},{"text":"!","color":"dark_red"}]


playsound minecraft:cryptid.cloud.ambience ambient @s

particle minecraft:happy_villager ~ ~1 ~ 2 2 2 10 400