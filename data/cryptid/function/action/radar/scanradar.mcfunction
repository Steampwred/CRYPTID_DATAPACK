playsound minecraft:cryptid.radioshort ambient @s ~ ~ ~ 0.4 1.6

##Title,Nearest
execute if entity @n[tag=cryptid, distance=..150] run title @s actionbar ["",{"translate":"chat.cryptid.radar.prefix","color":"red"},": <",{"translate":"chat.cryptid.radar.tracking","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"selector":"@n[tag=cryptid, distance=..150, limit=1, type=!marker, tag=!cryptid.ignore.radar]"},{"text":"}, ","color":"#996633"},"<",{"translate":"chat.cryptid.radar.class","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.mob.class","name":"@e[tag=cryptid, sort=nearest, limit=1]"}},{"text":"}","color":"#996633"}]

execute unless entity @n[tag=cryptid, distance=..150] run title @s actionbar ["",{"translate":"chat.cryptid.radar.prefix","color":"red"},": <",{"translate":"chat.cryptid.radar.not_found","color":"dark_red"},": ",{"text":"150","color":"red"},">"]

#effect give @n[tag=cryptid,limit=1,type=!marker,tag=!cryptid.ignore.radar] minecraft:glowing 1 0 true

execute if entity @n[tag=cryptid, distance=..150] positioned ~ ~1 ~ facing entity @n[tag=cryptid,type=!marker,tag=!cryptid.ignore.radar] feet positioned ^-0.013 ^.001 ^0.4 run particle minecraft:electric_spark ~ ~0.6 ~ 0 0 0 0 1


##trol

execute if score @s cryptid.player.harmony matches ..-2500 as @s store result score @s cryptid.player.random run random value 1..250
execute if score @s cryptid.player.random matches 1 run function cryptid:events/cryptid/tortured
