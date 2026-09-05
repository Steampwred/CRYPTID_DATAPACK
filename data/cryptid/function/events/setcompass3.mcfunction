item modify entity @s[tag=!deadradio] weapon.mainhand cryptid:setcompass3
tag @s[tag=!deadradio] add cryptid.itemcooldown
playsound minecraft:cryptid.radioshort ambient @s


scoreboard players set @s cryptid.player.radioloop 100



##sounds

stopsound @s * minecraft:cryptid.radiolong
stopsound @s * minecraft:cryptid.radiolong2
stopsound @s * minecraft:cryptid.radiolong3

playsound minecraft:cryptid.radiolong3 ambient @s ~ ~ ~ 1000 1 1






#title @s[tag=!deadradio] actionbar ["",{"translate":"chat.cryptid.radio3.prefix","color":"red"},": <",{"translate":"chat.cryptid.radio3.distance","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.player.heart.distance","name":"@s"}},{"text":"}, ","color":"#996633"},"<",{"translate":"chat.cryptid.radio3.event_percent","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"text":"0.000","color":"white"},{"score":{"objective":"cryptid.player.event","name":"@s"}},{"text":"}, ","color":"#996633"},"<",{"translate":"chat.cryptid.radio3.capsules","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"score":{"objective":"cryptid.maxlives","name":"@s"}},{"text":"}","color":"#996633"}]

title @s[tag=deadradio] actionbar ["",{"translate":"chat.cryptid.radio3.interference","color":"gray"}]
