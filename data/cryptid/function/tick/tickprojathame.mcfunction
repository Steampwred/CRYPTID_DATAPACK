execute unless entity @s[tag=init] rotated as @p run tp @s ~ ~ ~ ~ ~
execute unless entity @s[tag=init] run data merge entity @s {item:{id:potion,components:{"minecraft:custom_model_data":1396},count:1},teleport_duration:2}
#{item:{id:diamond_sword,components:{"minecraft:custom_model_data":1304},count:1},teleport_duration:2}
execute unless entity @s[tag=init] run tag @s add cryptid.timer
execute unless entity @s[tag=init] run scoreboard players operation @s cryptid.player.id = @p cryptid.player.id 
tag @s add init

##charge up
particle minecraft:crimson_spore ~ ~ ~ 0 0 0 0.1 2
execute if score @s cryptid.timer matches ..-10 run tp @s ^ ^ ^1.9
execute if score @s cryptid.timer matches -10..0 rotated as @p run tp @s ~ ~ ~ ~ ~
execute if score @s cryptid.timer matches -10..0 positioned as @p positioned ~ ~1.1 ~ run tp @s ^ ^ ^1.2


execute unless score @s cryptid.timer matches ..-12 run return fail
## launched
execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=1,dy=1,dz=1,type=!#cryptid:nonliving] positioned ~-1 ~-1 ~-1 if entity @s[dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 run function cryptid:rituals/athame/projhit
## Break/ despawn
execute unless block ~ ~ ~ #replaceable run function cryptid:rituals/athame/projbreak
execute if score @s cryptid.timer matches -150 run kill @s

