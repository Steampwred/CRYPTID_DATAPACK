##Thanks to .nol1k for the commands for the radar! I tweaked them a little bit but its great, thanks for the contribution.

execute if score .heartbeat cryptid.globalevent matches 18 run function cryptid:action/radar/pingradar


##title
#title @s[tag=!deadradio] actionbar ["",{"text":"[RADAR]","color":"red"},": <",{"text":"Tracking Cryptid","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"selector":"@e[tag=cryptid,sort=random, limit=1, type=!armor_stand, type=!marker, tag=!cryptid.vorheart]"},{"text":"}, ","color":"#996633"},"<",{"text":"Cryptid Class","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.mob.class","name":"@e[tag=cryptid, sort=nearest, limit=1]"}},{"text":"}","color":"#996633"}]

##trol

execute as @s store result score @s cryptid.player.random run random value 1..5000

execute if score @s cryptid.player.random matches 1 run function cryptid:events/cryptid/tortured
