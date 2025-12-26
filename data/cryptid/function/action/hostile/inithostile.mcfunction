##if survives initial infestation
execute on passengers if entity @s[type=marker,nbt={Tags:["cryptid.tickmarker"],data:{cmd:"cryptid:tick/tickinfested"}}] run kill @s
tag @s remove cryptid.infested

effect give @s minecraft:speed infinite 0 true
summon minecraft:zombified_piglin ~ ~ ~ {CustomName:'[{"text":"Brain parasite"}]',DeathLootTable:"minecraft:empty",Silent:1b, attributes:[{id:"generic.scale",base:0.01f}], Tags:["cryptid","cryptid.evilcore"]}

execute as @n[type=zombified_piglin, tag=cryptid.evilcore, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickevilcore"}


tag @s add cryptid.evilmob
team join cryptid.evilmob
tag @s add cryptid


effect give @n[type=zombified_piglin, tag=cryptid.evilcore] minecraft:invisibility infinite 255 true


ride @n[type=zombified_piglin, tag=cryptid.evilcore] mount @s

function cryptid:action/general/spawntickmarker {"name":"tickevilmob"}

