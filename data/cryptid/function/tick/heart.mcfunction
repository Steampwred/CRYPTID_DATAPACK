
##heartick
execute if entity @s[tag=!startedheart] at @s run function cryptid:action/heart/initheart
execute if entity @s[tag=!heartbuilt] run function cryptid:action/heart/digheart

##randomly fix bugs

execute store result score @s cryptid.random run random value 1..25
execute if score @s cryptid.random matches 2 if entity @s[tag=!cryptid.checkedheart] run function cryptid:action/heart/checkheart

##killrandom closest
execute as @e[tag=cryptid.vorheart,type=vindicator,sort=random, limit=1] at @s run kill @e[tag=cryptid.vorheart,type=vindicator, distance=1..25, limit=1,sort=nearest]

#heartbeat
execute if score .heartbeat cryptid.globalevent matches 1 run playsound minecraft:cryptid.heartbeat ambient @a[distance=0..45] ~ ~ ~ 4 0.1

## Player kills a heart
execute if entity @s[nbt={DeathTime:1s}] run function cryptid:action/heart/heartdeath

##kill system

tag @s remove cryptid.playernearheart
execute at @s if entity @p[distance=0..160] run tag @s add cryptid.playernearheart
kill @s[tag=!cryptid.playernearheart]

##damage

execute if entity @p[distance=0..7] run function cryptid:action/heart/nearheartcheck

##fails
execute as @s at @s if entity @s[y=-60,dy=-100000] run kill @s

##fall
execute if block ~ ~-0.3 ~ air run tp @s ~ ~-0.2 ~