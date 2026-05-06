execute unless entity @s[tag=init] rotated as @p run tp @s ~ ~ ~ ~ ~
execute unless entity @s[tag=init] run data merge entity @s {item:{id:diamond_sword,components:{"minecraft:custom_model_data":1304},count:1},teleport_duration:2}
execute unless entity @s[tag=init] run tag @s add cryptid.timer
tag @s add init

particle minecraft:electric_spark ~ ~0.2 ~
execute if score @s cryptid.timer matches ..-10 run tp @s ^ ^ ^1.9
execute if score @s cryptid.timer matches -10..0 rotated as @p run tp @s ~ ~ ~ ~ ~
execute if score @s cryptid.timer matches -10..0 positioned as @p positioned ~ ~1.1 ~ run tp @s ^ ^ ^1.2

execute if score @s cryptid.timer matches -100 run kill @s



execute unless score @s cryptid.timer matches ..-11 run return fail

execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=1,dy=1,dz=1,type=!#cryptid:nonliving] positioned ~-1 ~-1 ~-1 if entity @s[dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 run function cryptid:rituals/athame/projhit
execute unless block ~ ~ ~ #replaceable run function cryptid:rituals/athame/projbreak



execute if score @s cryptid.timer matches -200 run kill @s
