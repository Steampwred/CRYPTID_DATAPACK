#summon marker ~ ~ ~ {Tags:["cryptid.athameraycast"],PersistenceRequired:1}
##scoreboard players set @e[type=marker,tag=cryptid.athameraycast,limit=1,sort=nearest] cryptid.range 25
#execute as @e[type=marker,tag=cryptid.athameraycast,limit=1,sort=nearest] rotated as @p run function cryptid:rituals/athame/raycast

scoreboard players set @s cryptid.range 250

execute at @s anchored eyes positioned ^ ^ ^.4 run function cryptid:rituals/athame/raycast

