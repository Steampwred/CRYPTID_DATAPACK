execute as @s[tag=!init] at @s run tp @s ~ 65 ~ facing entity @n[tag=boss.core2] eyes
execute as @s[tag=!init] at @s run data merge entity @s {teleport_duration:2}
execute as @s[tag=!init] at @s run tag @s add init



execute if score @s cryptid.timer matches ..-10 run damage @p[distance=0..3] 7 cryptid:chomp by @s from @s

## break player walls
execute if score @s cryptid.timer matches -10 positioned ~ ~1 ~ unless predicate cryptid:check_air_square run particle minecraft:block{block_state:"red_concrete"} ~ ~ ~ 1.0 1.0 1.0 1 200
execute if score @s cryptid.timer matches -10 positioned ~ ~1 ~ unless predicate cryptid:check_air_square run playsound minecraft:block.stone.break ambient @a ~ ~ ~
execute if score @s cryptid.timer matches -10 positioned ~ ~1 ~ unless predicate cryptid:check_air_square run fill ~-1 ~-1 ~-1 ~1 ~3 ~1 air replace #cryptid:breakable

execute if score @s cryptid.timer matches ..-70 run tp @s ~ ~-200 ~
execute if score @s cryptid.timer matches ..-70 run kill @s

