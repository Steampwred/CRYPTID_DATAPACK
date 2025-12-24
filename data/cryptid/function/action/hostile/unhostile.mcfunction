tag @s remove cryptid.evilmob
tag @s add cryptid.infested
team leave @s
execute on passengers if entity @s[type=marker,nbt={Tags:["cryptid.tickmarker"],data:{cmd:"cryptid:tick/tickevilmob"}}] run kill @s
execute as @s[type=!player,tag=cryptid.infested] at @s run function cryptid:action/general/spawntickmarker {"name":"tickinfested"}

##need to fix so that un hostile mobs return to infested