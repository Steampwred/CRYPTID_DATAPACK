##remove when done
execute if score @s cryptid.deaths matches 1.. run tag @s remove boss.fight.1
execute if score @s cryptid.deaths matches 1.. run tag @s add bosscooldown
execute if score @s cryptid.deaths matches 1.. run tellraw @s {"translate":"chat.cryptid.boss.death.insult"}
execute if score @s cryptid.deaths matches 1.. run stopsound @s * minecraft:cryptid.music.presenceloop


##other stuff here lalalalall



##set infinite ammo and no hp loss


scoreboard players set @s cryptid.shotgunammo 2
scoreboard players set @s cryptid.shotgunammo2 2
scoreboard players set @s cryptid.shotgunammo3 2

execute as @s[gamemode=survival] run gamemode adventure
effect give @s minecraft:regeneration 1 0 true

#nokb


tag @s add cryptid.nokb
