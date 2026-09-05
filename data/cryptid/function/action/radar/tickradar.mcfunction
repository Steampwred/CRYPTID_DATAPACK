##Thanks .nol1k for the commands for the radar! I tweaked them a little bit but its great, thanks for the contribution. hopefully ts works -.nol1k

execute if score .heartbeat cryptid.globalevent matches 18 run function cryptid:action/radar/pingradar



##title
#title @s[tag=!deadradio] actionbar ["",{"translate":"chat.cryptid.radar.prefix","color":"red"},": <",{"translate":"chat.cryptid.radar.tracking_alt","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"selector":"@e[tag=cryptid,sort=random, limit=1, type=!armor_stand, type=!marker, tag=!cryptid.vorheart]"},{"text":"}, ","color":"#996633"},"<",{"translate":"chat.cryptid.radar.class","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.mob.class","name":"@e[tag=cryptid, sort=nearest, limit=1]"}},{"text":"}","color":"#996633"}]
