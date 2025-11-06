
playsound minecraft:cryptid.radioshort ambient @s ~ ~ ~ 0.4 1.6

##Title,Nearest
title @s[tag=!deadradio] actionbar ["",{"text":"[RADAR]","color":"red"},": <",{"text":"Tracking Nearest Cryptid","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"selector":"@n[tag=cryptid, distance=..240, limit=1, type=!marker, tag=!cryptid.radarignore]"},{"text":"}, ","color":"#996633"},"<",{"text":"Cryptid Class","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.mob.class","name":"@e[tag=cryptid, sort=nearest, limit=1]"}},{"text":"}","color":"#996633"}]

#effect give @n[tag=cryptid,limit=1,type=!marker,tag=!cryptid.radarignore] minecraft:glowing 1 0 true

execute positioned ~ ~1 ~ facing entity @n[tag=cryptid,type=!marker,tag=!cryptid.radarignore] feet positioned ^-0.013 ^.001 ^0.4 run particle minecraft:electric_spark ~ ~0.6 ~ 0 0 0 0 1


##trol

execute as @s store result score @s cryptid.player.random run random value 1..250

execute if score @s cryptid.player.random matches 1 run function cryptid:events/cryptid/tortured
