## Initialize raycast
summon marker ~ ~ ~ {Tags:["cryptid.athameraycast"],PersistenceRequired:1}

scoreboard players set @e[type=marker,tag=cryptid.athameraycast,limit=1,sort=nearest] cryptid.range 25

execute as @e[type=marker,tag=cryptid.athameraycast,limit=1,sort=nearest] rotated as @p run function cryptid:rituals/athame/raycast

# Player effects

