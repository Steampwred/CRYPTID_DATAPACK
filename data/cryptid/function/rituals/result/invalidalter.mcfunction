scoreboard players set @s cryptid.timer 0 
title @a[distance=..10] actionbar {"text":"we see you","color":"dark_red","bold":false,"obfuscated": true}


execute if entity @s[tag=ritual.translate] run tellraw @a[distance=..10] {"text":"The alter seems to be missing something...","color":"dark_purple","bold":true}

function cryptid:rituals/random/randommessage

## Reset
scoreboard players set @s cryptid.ritual.stability 0
scoreboard players set @s cryptid.ritual.focicount 0
scoreboard players set @s cryptid.ritual.turns 0

tag @s remove ritual.translate

tag @e[tag=sacrifice.mob,distance=..15] remove sacrifice.mob
execute as @e[tag=sacrifice.item,type=item,distance=..15] run data merge entity @s {NoGravity:0b,Tags:[""]}

