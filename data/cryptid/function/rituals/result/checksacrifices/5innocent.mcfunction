scoreboard players reset @s cryptid.ritual.sacrificecounter
execute as @e[distance=0.5..11,type=zombie] run scoreboard players add @n[distance=..11,tag=cryptid.orifice,type=zombie] cryptid.ritual.sacrificecounter 1
execute unless score @s cryptid.ritual.sacrificecounter matches 5.. run return fail

particle crimson_spore ~ ~ ~ 0 0 0 1 200
playsound minecraft:cryptid.ambient.hand ambient @a ~ ~ ~ 1 1
tellraw @a {"text":"FIVE INNOCENTS yayy","color":"red"}
tag @s add ritual.cravingmet
