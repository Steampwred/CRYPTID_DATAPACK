
###nosleeping

execute if score @s cryptid.player.harmony matches -20000..-10000 if block ~ ~0.3 ~ #beds run setblock ~ ~ ~ air
execute if score @s cryptid.player.harmony matches -20000..-10000 if block ~ ~0.3 ~ #beds run tp @s ~ ~1 ~


##endeventhandler

execute at @s if score @s cryptid.event.random matches 1..90 run scoreboard players add .current cryptid.eventcap 2


##radio factor
execute at @s if score @s cryptid.event.random matches 1..90 if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run playsound minecraft:cryptid.bone.knock ambient @a
execute at @s if score @s cryptid.event.random matches 1..90 if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run tellraw @a ["",{"text":"[RADIOLOG] An event is happening! <AVG SEVERITY: ","color":"#D01353"},{"score":{"name":".global","objective":"cryptid.world.fury"},"color":"#D01353"},{"text":">","color":"#D01353"}]


############NOTE: most events should be DISABLED in the dimension
##primer events

function cryptid:events/eventhandler/primerevents


#mining ONLY events

execute unless dimension cryptid:below at @s as @s[y=40,dy=-1000] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"mining"}

#sky ONLY  events

execute unless dimension cryptid:below at @s as @s[y=80,dy=1000] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"sky"}

####world fury events

execute unless dimension cryptid:below if score .global cryptid.world.fury matches 300.. run function cryptid:events/eventhandler/macroroll {"eventgroup":"fury"}

##low tier events

execute unless dimension cryptid:below as @s[scores={cryptid.player.harmony=5000..30000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"low"}

#mid tier events

execute unless dimension cryptid:below as @s[scores={cryptid.player.harmony=-7000..5000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"mid"}

#high tier events

execute unless dimension cryptid:below as @s[scores={cryptid.player.harmony=-30000..-7000}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"high"}

#night time events

execute unless dimension cryptid:below if score .globaltime cryptid.time matches 13000..24000 as @s[scores={cryptid.player.harmony=-20000..0}] at @s run function cryptid:events/eventhandler/macroroll {"eventgroup":"night"}

##ocean events

execute unless dimension cryptid:below if biome ~ ~ ~ #minecraft:is_ocean run function cryptid:events/eventhandler/macroroll {"eventgroup":"ocean"}

##belowevents

execute if dimension cryptid:below run function cryptid:events/eventhandler/macroroll {"eventgroup":"below"}

##reset eventrandom
execute at @s if score @s cryptid.event.random matches 1..90 run scoreboard players set @s cryptid.event.random 400001



