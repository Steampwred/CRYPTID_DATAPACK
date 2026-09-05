item modify entity @s[tag=!deadradio] weapon.mainhand cryptid:setcompass
tag @s[tag=!deadradio] add cryptid.itemcooldown
playsound minecraft:cryptid.radioshort ambient @s


scoreboard players set @s cryptid.player.radioloop 100


##sounds

stopsound @s * minecraft:cryptid.radiolong
stopsound @s * minecraft:cryptid.radiolong2
stopsound @s * minecraft:cryptid.radiolong3

playsound minecraft:cryptid.radiolong ambient @s ~ ~ ~ 1000 1 1


#title @s clear
#title @s[tag=!deadradio] actionbar ["",{"translate":"chat.cryptid.radio.prefix","color":"red"},": <",{"translate":"chat.cryptid.radio.flux","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.flux","name":"@s"}},{"color":"#996633","text":"}, "},"<",{"translate":"chat.cryptid.radio.harmony","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.harmony","name":"@s"}},{"color":"#996633","text":"},"},"<",{"translate":"chat.cryptid.radio.strength","color":"dark_red"},">: ",{"text":"{","color":"#996633"},{"color":"#996633","score":{"objective":"cryptid.player.strength","name":"@s"}},{"color":"#996633","text":"}"}]

title @s[tag=deadradio] actionbar ["",{"translate":"chat.cryptid.radio.interference","color":"gray"}]
