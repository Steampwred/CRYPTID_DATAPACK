execute if score @s cryptid.timer matches 2 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1368]
execute if entity @e[tag=trap.trapped, sort=nearest, limit=1,tag=!cryptid] if score @s cryptid.timer matches -300 run function cryptid:action/trap/trapbreak
execute if entity @e[tag=trap.trapped, sort=nearest, limit=1, tag=cryptid] if score @s cryptid.timer matches -150 run function cryptid:action/trap/trapbreak

tp @e[tag=trap.trapped, sort=nearest, limit=1,distance=..4] ~ ~ ~
