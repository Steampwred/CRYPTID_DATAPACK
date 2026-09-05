summon minecraft:vindicator ~ 400 ~ {DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.flesh_basilisk"}]',Tags:["cryptid","cryptid.crawler","cryptid.underground","cryptid.timer"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0.2f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}

item replace entity @e[type=vindicator,tag=cryptid.crawler] armor.head with potion[minecraft:custom_model_data=1378]


execute positioned ~ 400 ~ run effect give @e[type=vindicator, tag=cryptid.crawler] minecraft:invisibility infinite 1 true


execute as @e[type=vindicator, tag=cryptid.crawler] at @s run function cryptid:action/stats/crawler

execute positioned ~ 400 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.crawler,limit=1] cryptid.mob.class 5

execute positioned ~ 400 ~ run spreadplayers ~ ~ 10 30 under 40 false @e[type=vindicator, sort=nearest, tag=cryptid.crawler, limit=1]

execute as @e[type=vindicator, tag=cryptid.crawler, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickcrawler"}

playsound minecraft:cryptid.crawler.spawn ambient @s ~ ~-100 ~ 100 1.1

function cryptid:events/cryptid/flicker