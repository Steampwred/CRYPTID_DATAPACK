playsound minecraft:cryptid.radioshort ambient @s ~ ~ ~ 0.4 1.6

## lOop scan
tag @e[tag=cryptid,type=!marker,tag=!cryptid.ignore.radar,distance=1..150] add radar.scanpending

execute as @s run function cryptid:action/radar/scanloop

execute as @e[tag=radar.target,limit=1] at @s run function cryptid:action/radar/scanhit


##Title,Nearest

execute if entity @n[tag=radar.target, distance=..150] run title @s actionbar ["",{"translate":"chat.cryptid.radar.prefix","color":"red"},": <",{"translate":"chat.cryptid.radar.tracking","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"selector":"@n[tag=radar.target, distance=..150, limit=1, type=!marker, tag=!cryptid.ignore.radar]"},{"text":"}, ","color":"#996633"},"<",{"translate":"chat.cryptid.radar.class","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.mob.class","name":"@e[tag=radar.target, sort=nearest, limit=1]"}},{"text":"}","color":"#996633"}]

execute unless entity @n[tag=radar.target, distance=..150] run title @s actionbar ["",{"translate":"chat.cryptid.radar.prefix","color":"red"},": <",{"translate":"chat.cryptid.radar.not_found","color":"dark_red"},">"]

execute if entity @n[tag=radar.target, distance=..150] positioned ~ ~1 ~ facing entity @n[tag=radar.target] feet positioned ^-0.013 ^.001 ^0.4 run particle minecraft:electric_spark ~ ~0.6 ~ 0 0 0 0 1


##trol
execute if entity @n[tag=radar.target, distance=..150] if score @s cryptid.player.harmony matches ..-2500 as @s store result score @s cryptid.player.random run random value 1..250
execute if entity @n[tag=radar.target, distance=..150] if score @s cryptid.player.random matches 1 run function cryptid:events/cryptid/tortured

#reset
execute as @e[tag=radar.target] run tag @s remove radar.target


