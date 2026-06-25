
##harmony
execute if score .global cryptid.challenge matches 1 run scoreboard players set @s cryptid.player.harmony -999999

scoreboard players set @s cryptid.player.flux 0

scoreboard players set @s[scores={cryptid.player.heart.distance=55..80}] cryptid.player.flux 1
scoreboard players set @s[scores={cryptid.player.heart.distance=80..100}] cryptid.player.flux 2

scoreboard players set @s[scores={cryptid.player.heart.distance=40..50}] cryptid.player.flux -1
scoreboard players set @s[scores={cryptid.player.heart.distance=30..40}] cryptid.player.flux -2
scoreboard players set @s[scores={cryptid.player.heart.distance=20..30}] cryptid.player.flux -4
scoreboard players set @s[scores={cryptid.player.heart.distance=10..20}] cryptid.player.flux -6
scoreboard players set @s[scores={cryptid.player.heart.distance=0..10}] cryptid.player.flux -12

##overrides
execute if entity @e[tag=cryptid.lessertotem, distance=0..10] run scoreboard players set @s cryptid.player.flux 1
##damage dealth loses harmony
execute as @s[scores={cryptid.damagedealt=1..}] run scoreboard players remove @s cryptid.player.harmony 200
execute as @s[scores={cryptid.damagedealt=1..}] run scoreboard players set @s cryptid.damagedealt 0

##darkness
execute as @s at @s if predicate cryptid:checklight run scoreboard players remove @s cryptid.player.flux 2
execute as @s at @s unless score .globaltime cryptid.time matches 1000..13000 unless predicate cryptid:checklight run scoreboard players add @s cryptid.player.flux 1


##event timer

scoreboard players add @s cryptid.eventhandler 1
execute if score @s cryptid.eventhandler matches 200.. run scoreboard players set @s cryptid.eventhandler 0




##########################actualize and apply random event numbrs based on harmony, full formula in this function
execute if score .allow cryptid.eventcap matches 1 if score @s cryptid.eventhandler matches 1 run function cryptid:tick/player/random/randomgenerator

##eventcaphandler
execute if score .global cryptid.eventcap >= .current cryptid.eventcap run scoreboard players set .allow cryptid.eventcap 1
execute if score .global cryptid.eventcap < .current cryptid.eventcap run scoreboard players set .allow cryptid.eventcap 0



scoreboard players set @s[scores={cryptid.player.harmony=10000..20000}] cryptid.player.event 2
scoreboard players set @s[scores={cryptid.player.harmony=5000..10000}] cryptid.player.event 12
scoreboard players set @s[scores={cryptid.player.harmony=0..5000}] cryptid.player.event 21
scoreboard players set @s[scores={cryptid.player.harmony=-5000..0}] cryptid.player.event 38
scoreboard players set @s[scores={cryptid.player.harmony=-10000..-5000}] cryptid.player.event 67
scoreboard players set @s[scores={cryptid.player.harmony=-20000..-10000}] cryptid.player.event 89
execute if score .allow cryptid.eventcap matches 0 run scoreboard players set @s cryptid.player.event 0


################################alert system

playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=-4..-1,cryptid.player.harmony=9000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=-4..-1,cryptid.player.harmony=9000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"Area unstable. Harmony at [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. Consider leaving.","color":"dark_red"}]

playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=-10..-4,cryptid.player.harmony=9000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=-10..-4,cryptid.player.harmony=9000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"Area very unstable. Harmony at [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. High caution advised","color":"dark_red"}]


#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=3000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=3000..3010}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"Nearby paranormal activity. Harmony at [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. Extreme caution advised","color":"dark_red"}]


#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=0}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=0..10}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"Caution advised. Harmony leaving safe threshold, at  [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. Leave immediately!","color":"dark_red"}]

playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-2010}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-2010..-2000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"[???] detection at [20%]? nearby. Harmony at   [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. Save yourself!","color":"dark_red"}]

#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-6010}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-6010..-6000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"-------Interference------. Harmony at  [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. Prepare yourself","color":"dark_red"}]

playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-9010}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-9010..-9000}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"You are advised to leave immediately. Harmony at  [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. ...","color":"dark_red"}]

#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-14000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-14000..-13990}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"[???] Low harmony extreme warning at .  [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. ...","color":"dark_red"}]

playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-15000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-15000..-14990}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"Expect pain -> [?] At  [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. Are you sure this is worth it?","color":"dark_red"}]

#playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-16000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-16000..-15990}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"Arm yourself. Harmony at  [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. Make your peace","color":"dark_red"}]

playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-18000}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-18000..-17990}] actionbar ["",{"text":"\ua022","font":"minecraft:images"},{"text":" [RADIO] ","color":"red"},{"text":"Too late to turn back. Harmony at  [","color":"dark_red"},{"color":"red","bold":true,"score":{"objective":"cryptid.player.harmony","name":"@s"}},{"text":"]. Say your goodbyes","color":"dark_red"}]

playsound minecraft:cryptid.radiowarning ambient @s[tag=!cryptid.missingradio,scores={cryptid.player.flux=..-1,cryptid.player.harmony=-19999}] ~ ~ ~ 1 1 1
title @s[scores={cryptid.player.flux=..-1,cryptid.player.harmony=-19999..-19990}] actionbar ["",{"text":"[RADIO] ","color":"red"},{"text":">MAXIMUM NEGATIVE HARMONY REACHED<","bold":true,"color":"#993366"}]



##increase fury when near high level cryptids

execute if score .heartbeat cryptid.globalevent matches 6 if entity @e[tag=cryptid,scores={cryptid.mob.class=3..4},distance=..20] run scoreboard players add .global cryptid.world.fury 1
execute if score .heartbeat cryptid.globalevent matches 3 if entity @e[tag=cryptid,scores={cryptid.mob.class=5..},distance=..20] run scoreboard players add .global cryptid.world.fury 1



##apply harmony
function cryptid:tick/applyharmony





