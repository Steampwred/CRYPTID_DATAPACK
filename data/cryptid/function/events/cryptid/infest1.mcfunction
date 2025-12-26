execute store result score @s cryptid.player.random run random value 1..6
execute if score @s cryptid.player.random matches 1 run tellraw @s {"text":"Nothing is immune from corruption.","color":"red"}



tag @e[type=!player, sort=nearest, type=!#cryptid:projectiles, type=!item, type=!villager, type=!armor_stand, distance=1..20,limit=3,tag=!cryptid] add cryptid.infested
tag @e[type=!player, sort=nearest, type=!#cryptid:projectiles, type=!item, type=!villager, type=!armor_stand, distance=1..20,limit=3,tag=!cryptid] add cryptid

execute as @e[type=!player,tag=cryptid.infested, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickinfested"}


function cryptid:events/cryptid/flicker3