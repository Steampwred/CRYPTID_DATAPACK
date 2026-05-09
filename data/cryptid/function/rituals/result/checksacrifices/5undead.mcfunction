scoreboard players reset @s cryptid.ritual.sacrificecounter
execute as @e[distance=0.5..11,type=#minecraft:undead,tag=sacrifice.mob] run scoreboard players add @n[distance=..11,tag=cryptid.orifice,type=zombie] cryptid.ritual.sacrificecounter 1
execute unless score @s cryptid.ritual.sacrificecounter matches 5.. run return fail

particle crimson_spore ~ ~ ~ 0 0 0 1 200
playsound minecraft:cryptid.ambient.hand ambient @a ~ ~ ~ 1 1

tag @s add ritual.cravingmet

execute store result score @s cryptid.player.random run random value 1..3

execute if score @s cryptid.player.random matches 1..2 run loot spawn ~ ~ ~ loot cryptid:rituals/rewardprecious
execute if score @s cryptid.player.random matches 3 run loot spawn ~ ~ ~ loot cryptid:pyramid
loot spawn ~ ~ ~ loot cryptid:rituals/meats

