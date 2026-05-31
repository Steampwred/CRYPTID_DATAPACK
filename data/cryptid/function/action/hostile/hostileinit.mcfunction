execute store result score @s cryptid.player.random run random value 1..60
execute at @s if score @s cryptid.player.random matches 1 run tellraw @a[distance=..20] {"text":"It Spreads...","color":"red"}
execute at @s if score @s cryptid.player.random matches 2 run tellraw @a[distance=..20] {"text":"fear","color":"red"}
execute at @s if score @s cryptid.player.random matches 3 run tellraw @a[distance=..20] {"text":"Amalgam","color":"red"}
execute at @s if score @s cryptid.player.random matches 4 run tellraw @a[distance=..20] {"text":"We Hunger","color":"red"}
execute at @s if score @s cryptid.player.random matches 5 run tellraw @a[distance=..20] {"text":"..?","color":"red"}
execute at @s if score @s cryptid.player.random matches 1..40 run playsound minecraft:cryptid.snap.ambient master @a ~ ~ ~ 1 0.1
execute at @s if score @s cryptid.player.random matches 1..20 run particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 .2 0 .0001 90 normal




tag @s add cryptid.evilmob
team join cryptid.evilmob
execute if entity @s[tag=cryptid.evilmob] run summon minecraft:zombified_piglin ~ ~ ~ {CustomName:'[{"text":"Brain parasite"}]',DeathLootTable:"minecraft:empty",Silent:1b, attributes:[{id:"generic.scale",base:0.01f}], Tags:["cryptid","cryptid.brainparasite"]}
ride @n[type=zombified_piglin, tag=cryptid.brainparasite] mount @s

function cryptid:action/general/spawntickmarker {"name":"tickevilmob"}
execute on passengers run effect give @s minecraft:invisibility infinite 255 true
execute on passengers run effect give @s minecraft:regeneration infinite 255 true
