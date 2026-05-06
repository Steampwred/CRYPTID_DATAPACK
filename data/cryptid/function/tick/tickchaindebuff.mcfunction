execute if score @s cryptid.timer matches -1 on vehicle if entity @s[nbt={NoAI:1b}] run tag @s add NoAItrue
execute if score @s cryptid.timer matches -1 on vehicle run data merge entity @s {NoAI:1b}



execute on vehicle run effect give @s slowness 1 9 true



execute if score @s cryptid.timer matches -100 run function cryptid:action/chaindebuff/despawn
execute unless predicate cryptid:checkriding2 run function cryptid:action/chaindebuff/despawn


