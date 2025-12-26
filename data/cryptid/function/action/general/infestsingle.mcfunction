execute store result score @s cryptid.player.random run random value 1..30
execute at @s if score @s cryptid.player.random matches 1 run tellraw @a[distance=..20] {"text":"It Spreads...","color":"red"}
execute at @s if score @s cryptid.player.random matches 2 run tellraw @a[distance=..20] {"text":"fear","color":"red"}
execute at @s if score @s cryptid.player.random matches 3 run tellraw @a[distance=..20] {"text":"Amalgam","color":"red"}
execute at @s if score @s cryptid.player.random matches 4 run tellraw @a[distance=..20] {"text":"We Hunger","color":"red"}
execute at @s if score @s cryptid.player.random matches 5 run tellraw @a[distance=..20] {"text":"..?","color":"red"}



tag @s[type=!player, type=!#cryptid:projectiles, type=!item, type=!villager, type=!armor_stand, tag=!cryptid] add cryptid.infested
tag @s[type=!player, type=!#cryptid:projectiles, type=!item, type=!villager, type=!armor_stand, tag=!cryptid] add cryptid

execute as @s[type=!player,tag=cryptid.infested, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickinfested"}
