execute unless entity @p[distance=..60] run return fail

tag @s add this
execute at @s run tp @s ^ ^ ^2 facing entity @p
execute at @s run execute align xyz run tp @s ~0.5 ~ ~0.5
execute at @s unless block ~ ~ ~ #cryptid:nonsolid run tp @s ~ ~1 ~
execute if entity @n[distance=..1, tag=cryptid.stalker, tag=!this, type=vindicator] run spreadplayers ~ ~ 3 3 under 80 true @s


playsound minecraft:block.stone.break ambient @a
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:red_terracotta replace #cryptid:replaceable/base_all
tag @s remove this