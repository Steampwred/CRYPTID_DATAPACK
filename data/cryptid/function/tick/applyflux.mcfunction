##harmony
execute if score .global cryptid.challenge matches 1 run scoreboard players set @s cryptid.player.harmony -999999


##damage dealth loses harmony
execute as @s[scores={cryptid.damagedealt=1..}] run scoreboard players remove @s cryptid.player.harmony 100
execute as @s[scores={cryptid.damagedealt=1..}] run scoreboard players set @s cryptid.damagedealt 0


#####event timer

scoreboard players add @s cryptid.eventhandler 1
execute if score @s cryptid.eventhandler matches 200.. run scoreboard players set @s cryptid.eventhandler 0


##########################actualize and apply random event numbrs based on harmony, full formula in this function
execute if score .allow cryptid.eventcap matches 1 if score @s cryptid.eventhandler matches 1 run function cryptid:tick/player/random/randomgenerator

##eventcaphandler
execute if score .global cryptid.eventcap >= .current cryptid.eventcap run scoreboard players set .allow cryptid.eventcap 1
execute if score .global cryptid.eventcap < .current cryptid.eventcap run scoreboard players set .allow cryptid.eventcap 0



#scoreboard players set @s[scores={cryptid.player.harmony=10000..20000}] cryptid.player.event 2
#scoreboard players set @s[scores={cryptid.player.harmony=5000..10000}] cryptid.player.event 12
#scoreboard players set @s[scores={cryptid.player.harmony=0..5000}] cryptid.player.event 21
#scoreboard players set @s[scores={cryptid.player.harmony=-5000..0}] cryptid.player.event 38
#scoreboard players set @s[scores={cryptid.player.harmony=-10000..-5000}] cryptid.player.event 67
#scoreboard players set @s[scores={cryptid.player.harmony=-20000..-10000}] cryptid.player.event 89
#execute if score .allow cryptid.eventcap matches 0 run scoreboard players set @s cryptid.player.event 0


################################alert system

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=9000}] cryptid.player.titlecooldown 40
playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=-4..-1,cryptid.player.harmony=9000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=-4..-1,cryptid.player.harmony=9000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_9000_1","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=-10..-4,cryptid.player.harmony=9000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=-10..-4,cryptid.player.harmony=9000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_9000_2","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=3000}] cryptid.player.titlecooldown 40
#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=3000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=3000..3010}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_3000","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=0}] cryptid.player.titlecooldown 40
#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=0}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=0..10}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_0","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-2000}] cryptid.player.titlecooldown 40
playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-2010}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-2010..-2000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_m2000","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-6000}] cryptid.player.titlecooldown 40
#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-6010}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-6010..-6000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_m6000","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-9000}] cryptid.player.titlecooldown 40
playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-9010}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-9010..-9000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_m9000","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-14000}] cryptid.player.titlecooldown 40
#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-14000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-14000..-13990}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_m14000","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-15000}] cryptid.player.titlecooldown 40
playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-15000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-15000..-14990}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_m15000","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-16000}] cryptid.player.titlecooldown 40
#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-16000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-16000..-15990}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_m16000","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-18000}] cryptid.player.titlecooldown 40
playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-18000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-18000..-17990}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_m18000","color":"dark_red","with":[{"score":{"objective":"cryptid.player.harmony","name":"@s"},"color":"red","bold":true}]}]

scoreboard players set @s[tag=!cryptid.missingradio,scores={cryptid.player.harmony=-19999}] cryptid.player.titlecooldown 40
playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-19999}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-19999..-19990}] actionbar ["",{"translate":"cryptid.radio.prefix","color":"red"},{"translate":"cryptid.radio.harmony_max_negative","bold":true,"color":"#993366"}]



##increase fury when near high level cryptids

execute if score .heartbeat cryptid.globalevent matches 6 if entity @e[tag=cryptid,scores={cryptid.mob.class=3..4},distance=..20] run scoreboard players add .global cryptid.world.fury 1
execute if score .heartbeat cryptid.globalevent matches 3 if entity @e[tag=cryptid,scores={cryptid.mob.class=5..},distance=..20] run scoreboard players add .global cryptid.world.fury 1



##apply harmony
function cryptid:tick/applyharmony