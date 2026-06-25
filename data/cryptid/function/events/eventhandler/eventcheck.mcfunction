
###nosleeping

execute if score @s cryptid.player.harmony matches -20000..-10000 if block ~ ~0.3 ~ #beds run setblock ~ ~ ~ air destroy
execute if score @s cryptid.player.harmony matches -20000..-10000 if block ~ ~0.3 ~ #beds run tp @s ~ ~1 ~




### EVENT HANDLER
execute unless score @s cryptid.event.random matches 1..90 run return fail

scoreboard players add .current cryptid.eventcap 2


##radio factor
execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run playsound minecraft:cryptid.bone.knock ambient @a
execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run tellraw @a ["",{"text":"[RADIOLOG] An event is happening! <AVG SEVERITY: ","color":"#D01353"},{"score":{"name":".global","objective":"cryptid.world.fury"},"color":"#D01353"},{"text":">","color":"#D01353"}]


############NOTE: most events should be DISABLED in the dimension

##belowevents

execute if dimension cryptid:below run function cryptid:events/eventhandler/macroroll {"eventgroup":"below"}
execute if dimension cryptid:below run return run execute at @s if score @s cryptid.event.random matches 1..90 run scoreboard players set @s cryptid.event.random 400001



##primer events
function cryptid:events/eventhandler/primerevents


#mining ONLY events

execute at @s as @s[y=40,dy=-1000] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"mining"}
execute at @s as @s[y=40,dy=-1000] if score @s cryptid.event.random matches 1..50 at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"generalunderground"}


execute at @s as @s[y=40,dy=-1000] at @s run return run execute at @s if score @s cryptid.event.random matches 1..90 run scoreboard players set @s cryptid.event.random 400001

#sky ONLY  events

execute at @s as @s[y=110,dy=1000] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"sky"}

####world fury events

#execute if score .global cryptid.world.fury matches 3000.. run function cryptid:events/eventhandler/macroroll {"eventgroup":"fury"}

##low tier events

execute as @s[scores={cryptid.player.harmony=5000..30000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"low"}

    execute if score @s cryptid.event.random matches 1..30 as @s[scores={cryptid.player.harmony=5000..30000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"generalterrain"}
    execute if score @s cryptid.event.random matches 30..80 as @s[scores={cryptid.player.harmony=5000..30000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"generalmood"}
     ##fix radio
    execute if score @s cryptid.event.random matches 1..60 as @s[scores={cryptid.player.harmony=5000..30000}] run tag @s remove deadradio
    execute if score @s cryptid.event.random matches 1..90 as @s[scores={cryptid.player.harmony=5000..30000,cryptid.wallspawn=1..}] run scoreboard players remove @s cryptid.wallspawn 1

#mid tier events

execute as @s[scores={cryptid.player.harmony=-7000..5000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"mid"}

    execute if score @s cryptid.event.random matches 1..60 as @s[scores={cryptid.player.harmony=-7000..5000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"generalterrain"}
    execute if score @s cryptid.event.random matches 40..80 as @s[scores={cryptid.player.harmony=-7000..5000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"generalmood"}
#high tier events

execute as @s[scores={cryptid.player.harmony=-30000..-7000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"high"}

  execute if score @s cryptid.event.random matches 1..90 as @s[scores={cryptid.player.harmony=-30000..-7000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"generalmood"}



#night time events

    execute if score .globaltime cryptid.time matches 13000..24000 as @s[scores={cryptid.player.harmony=-20000..0}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"night"}
    execute if score .globaltime cryptid.time matches 13000..24000 as @s[scores={cryptid.player.harmony=-20000..0}] if score @s cryptid.event.random matches 1..30 at @s run function cryptid:events/night/lostsoul

##ocean events

execute if biome ~ ~ ~ #minecraft:is_ocean run function cryptid:events/eventhandler/macroroll {"eventgroup":"ocean"}



## reset eventrandom
execute at @s if score @s cryptid.event.random matches 1..90 run scoreboard players set @s cryptid.event.random 400001