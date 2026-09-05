summon vindicator ~ 200 ~ {attributes:[{id:"generic.scale",base:0.05f}], CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.coal_man"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.coal","cryptid.timer"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ 200 ~ run execute as @e[type=vindicator, sort=nearest, tag=cryptid.coal,limit=1] at @s run function cryptid:action/stats/coal

playsound minecraft:cryptid.coal.spawn

execute as @e[type=vindicator, tag=cryptid.coal, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickcoal"}


execute positioned ^ ^ ^3 run particle block{block_state:{Name:coal_ore}} ~ ~1 ~ 0.3 0.3 0.3 0 300