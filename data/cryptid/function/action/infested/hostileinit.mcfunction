playsound minecraft:cryptid.snap.ambient master @a ~ ~ ~ 1 0.1
particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 .2 0 .0001 90 normal
tag @s add cryptid.evilmob
team join cryptid.evilmob

execute if entity @s[tag=cryptid.evilmob] run summon minecraft:zombified_piglin ~ ~ ~ {CustomName:'[{"text":"Brain parasite"}]',DeathLootTable:"minecraft:empty",Silent:1b, attributes:[{id:"generic.scale",base:0.1f}], Tags:["cryptid","cryptid.brainparasite"]}

ride @n[type=marker,tag=cryptid.tickmarker] dismount
ride @n[type=zombified_piglin, tag=cryptid.brainparasite] mount @s
ride @n[type=marker,tag=cryptid.tickmarker] mount @s
#execute on passengers run effect give @s minecraft:invisibility infinite 255 true
