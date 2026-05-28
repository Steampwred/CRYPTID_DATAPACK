scoreboard players add @s cryptid.maxlives 1
playsound minecraft:entity.zombie_villager.converted ambient @a
particle minecraft:end_rod ~ ~1.5 ~ 0.5 0.5 0.5 0.1 300
tellraw @s ["",{"text":"+ 1 Life","color":"dark_red","bold":true}]
advancement revoke @s only cryptid:eatheart