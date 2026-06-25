tag @s remove cryptid.evilmob
tag @s remove cryptid
tag @s remove cryptid.ignore.radar
tag @s remove cryptid.ignore.totemward
team leave @s

execute on passengers if entity @s[type=marker,nbt={Tags:["cryptid.tickmarker"],data:{cmd:"cryptid:tick/tickevilmob"}}] run kill @s

execute on passengers if entity @s[tag=cryptid.brainparasite] run tag @s add this
execute on passengers if entity @s[tag=cryptid.brainparasite] run ride @s dismount
execute as @n[type=zombified_piglin, tag=cryptid.brainparasite,tag=this] run tp @s ~ -100 ~
execute as @e[type=zombified_piglin, tag=cryptid.brainparasite,tag=this] run kill @s