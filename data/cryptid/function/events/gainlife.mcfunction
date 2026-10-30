scoreboard players add @s cryptid.maxlives 1
playsound minecraft:entity.zombie_villager.converted ambient @a
particle minecraft:end_rod ~ ~1.5 ~ 0.5 0.5 0.5 0.1 300
tellraw @s[tag=!revivespelltarget] ["",{"translate":"chat.cryptid.life.increase.1","color":"dark_red","bold":true}]
tellraw @s[tag=revivespelltarget] ["",{"translate":"chat.cryptid.life.increase.2","color":"dark_red","bold":true}]

advancement revoke @s only cryptid:eatheart
tag @s[tag=revivespelltarget] remove revivespelltarget
