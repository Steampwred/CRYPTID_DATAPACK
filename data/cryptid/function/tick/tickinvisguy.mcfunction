execute as @s[tag=!init] run function cryptid:action/stats/invis


particle entity_effect{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0.7 0.7 0.7 0 10



##aggro
execute store result score @s cryptid.random run random value 1..3

execute if score @s cryptid.random matches 1 if entity @s[tag=agro] at @s run damage @s 0 player_attack by @p


scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-6000}] cryptid.player.titlecooldown 40
execute if entity @s[tag=agro] at @s run title @p actionbar [{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},"\n",{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},"\n",{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},"\n",{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},"\n",{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},{"translate":"cryptid.event.infection.grow","color":"dark_red"},"\n "]



##timer
execute if score @s cryptid.timer matches 1 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.timer matches 1 run tag @p add cryptid.glitchscreen
execute if score @s cryptid.timer matches 1 run kill @s

##player triggers
execute if entity @s[tag=!agro] if entity @p[distance=0..10] run function cryptid:action/invis/agro
execute if entity @p[distance=0..2] run function cryptid:action/invis/kill
execute if entity @p[distance=0..2] run kill @s

execute store result score @s cryptid.random run random value 1..3000
execute if score @s cryptid.random matches 1 run kill @s