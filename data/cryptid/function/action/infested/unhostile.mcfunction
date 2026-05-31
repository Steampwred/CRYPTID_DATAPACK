tag @s remove cryptid.evilmob
team leave @s
execute on passengers if entity @s[tag=cryptid.brainparasite] run tag @s add this
execute on passengers if entity @s[tag=cryptid.brainparasite] run ride @s dismount
execute as @n[type=zombified_piglin, tag=cryptid.brainparasite,tag=this] run tp @s ~ -100 ~
execute as @e[type=zombified_piglin, tag=cryptid.brainparasite,tag=this] run kill @s