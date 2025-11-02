##tickglobalevents

##changelog needed

#spawn and kill hearts
execute unless score .globalkill cryptid.globalevent >= maxkilltime cryptid.globalevent run scoreboard players add .globalkill cryptid.globalevent 1
execute unless score .globalspawn cryptid.globalevent >= maxspawntime cryptid.globalevent run scoreboard players add .globalspawn cryptid.globalevent 1
execute unless score .heartbeat cryptid.globalevent >= heartbeatmax cryptid.globalevent run scoreboard players add .heartbeat cryptid.globalevent 1
scoreboard players add .skinnedtime cryptid.globalevent 1
execute store result score .globaltime cryptid.time run time query daytime

##godlander tool animation frame provider
execute store result score .global cryptid.anitimer run time query gametime
scoreboard players operation .global cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .global cryptid.anitimer -= offset cryptid.anitimer
scoreboard players operation .global cryptid.anitimer %= 120 cryptid.anitimer
##godlander tool animation frame provider for party
execute store result score .party cryptid.anitimer run time query gametime
scoreboard players operation .party cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .party cryptid.anitimer -= offset.party cryptid.anitimer
scoreboard players operation .party cryptid.anitimer %= 80 cryptid.anitimer
##another frame animator
execute store result score .crawler cryptid.anitimer run time query gametime
scoreboard players operation .crawler cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .crawler cryptid.anitimer %= 70 cryptid.anitimer
##another frame animator
execute store result score .kraken cryptid.anitimer run time query gametime
scoreboard players operation .kraken cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .kraken cryptid.anitimer %= 120 cryptid.anitimer
##another frame animator
execute store result score .coal cryptid.anitimer run time query gametime
scoreboard players operation .coal cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .coal cryptid.anitimer %= 200 cryptid.anitimer
##another frame animator
execute store result score .explod cryptid.anitimer run time query gametime
scoreboard players operation .explod cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .explod cryptid.anitimer -= offset.explod cryptid.anitimer
scoreboard players operation .explod cryptid.anitimer %= 100 cryptid.anitimer
##another frame animator
execute store result score .bosshand cryptid.anitimer run time query gametime
scoreboard players operation .bosshand cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .bosshand cryptid.anitimer %= 80 cryptid.anitimer
##another frame animator
execute store result score .headpeeper cryptid.anitimer run time query gametime
scoreboard players operation .headpeeper cryptid.anitimer %= 24000 cryptid.anitimer
scoreboard players operation .headpeeper cryptid.anitimer %= 50 cryptid.anitimer



##worldfury
execute if score .global cryptid.world.fury matches 50.. run function cryptid:tick/player/worldfury



##guaranteed events

execute if score .global cryptid.day matches 30 if score .globaltime cryptid.time matches 3000 run function cryptid:action/portal/create






##pillartimer
scoreboard players remove .global cryptid.pillartimer 1
execute if score .global cryptid.pillartimer matches ..0 run scoreboard players set .global cryptid.pillartimer 40




########boss general tick
execute as @e[tag=bosscryptid, type=armor_stand] at @s run function cryptid:boss/tick/tickgeneral
execute as @e[tag=bosscryptid, type=zombie] at @s run function cryptid:boss/tick/tickgeneral



execute store result score .global cryptid.anitimer2 run time query gametime
scoreboard players operation .global cryptid.anitimer2 %= 24000 cryptid.anitimer2
scoreboard players operation .global cryptid.anitimer2 %= 1200 cryptid.anitimer2


##tick marker to save cost
execute as @e[tag=cryptid.tickmarker, type=marker] at @s run function cryptid:tick/general/tickmarker with entity @s data

##chompertick

scoreboard players add .chomper cryptid.globalevent 1
execute if score .chomper cryptid.globalevent matches 41.. run scoreboard players set .chomper cryptid.globalevent 1

#life per day
execute if score .globalspawn cryptid.globalevent matches 12 run execute as @a[scores={cryptid.player.flux=0..,cryptid.player.harmony=0..,cryptid.maxlives=..3}] run function cryptid:events/gainlife


##heart spawning logic reworked

##add 8 hearts per player if under 40
scoreboard players set maxcount cryptid.heartcount 4
execute as @a at @s if score maxcount cryptid.heartcount matches 0..40 run scoreboard players add maxcount cryptid.heartcount 6
##countinghearts
scoreboard players set count cryptid.heartcount 0
execute as @e[type=vindicator,tag=cryptid.vorheart] run scoreboard players add count cryptid.heartcount 1

##10t loop to reduce lag
execute if score .global 10t matches ..700 run scoreboard players add .global 10t 1
execute if score .global 10t matches 700.. run scoreboard players set .global 10t 0

##spawn hearts
execute if score .global cryptid.worldtimer matches 25000.. if score count cryptid.heartcount < maxcount cryptid.heartcount if score .global 10t matches 1 run execute as @a[sort=random] at @s if entity @s[dy=-520,y=180] run function cryptid:spawn/heart

##kill if too many
execute if score count cryptid.heartcount > maxcount cryptid.heartcount run kill @e[tag=cryptid.vorheart,type=vindicator, sort=random, limit=1]

##tickhearts
execute as @e[tag=cryptid.vorheart, type=minecraft:vindicator] at @s run function cryptid:tick/heart

##event cap increase 1 per day
execute if score .globaltime cryptid.time matches 1100 run function cryptid:action/world/dayincrease

##worldtimerevents


##init world and add worldtimer
scoreboard players add .global cryptid.worldtimer 1

execute if score .global cryptid.worldtimer matches 30..32 run scoreboard players set .global cryptid.eventcap 4

execute if score .global cryptid.worldtimer matches 30..32 run scoreboard players set .global cryptid.challenge 0

##forceload boss and remove
execute if score .global cryptid.worldtimer matches 31 run execute in cryptid:below run forceload add 100 100 -100 -100

execute if score .global cryptid.worldtimer matches 32 run execute in cryptid:below positioned 0 60 0 run function cryptid:boss/spawn/spawnarena

execute if score .global cryptid.worldtimer matches 3 run execute in cryptid:below run forceload remove 100 100 -100 -100

##ancient evil

execute if score .global cryptid.worldtimer matches 1200 run tellraw @a {"text":"An ancient evil has awakened in the depths of the world","color":"dark_red"}


execute if score .global cryptid.worldtimer matches ..25000 run kill @e[tag=cryptid.vorheart, type=vindicator]
execute if score .global cryptid.worldtimer matches ..35000 run kill @e[tag=cryptid.playernode, type=armor_stand]
execute if score .global cryptid.worldtimer matches ..25000 run kill @e[tag=cryptid.dopple,type=vindicator]



##easy mode

execute if score .global cryptid.challenge matches -1 run kill @e[tag=cryptid, tag=!cryptid.vorheart]
execute if score .global cryptid.challenge matches -1 run scoreboard players set @a[scores={cryptid.player.harmony=..0}] cryptid.player.harmony 0
execute if score .global cryptid.challenge matches -1 run scoreboard players set .global cryptid.day 20


execute if score .globalkill cryptid.globalevent >= maxkilltime cryptid.globalevent run scoreboard players set .globalkill cryptid.globalevent 0
execute if score .globalspawn cryptid.globalevent >= maxspawntime cryptid.globalevent run scoreboard players set .globalspawn cryptid.globalevent 0
execute if score .heartbeat cryptid.globalevent >= heartbeatmax cryptid.globalevent run scoreboard players set .heartbeat cryptid.globalevent 0

execute if score .skinnedtime cryptid.globalevent matches 500.. run scoreboard players set .skinnedtime cryptid.globalevent 0

execute if score .skinnedtime cryptid.globalevent matches 5 run tag @a remove deadradio

##join check for survival
execute if score .heartbeat cryptid.globalevent matches 1 run function cryptid:action/player/joincheck

##node spawning behavior
execute if score .skinnedtime cryptid.globalevent matches 2 run execute as @a[sort=random, limit=1] at @s run function cryptid:action/spawnnode

execute if score .skinnedtime cryptid.globalevent matches 100 run execute as @a[sort=random, limit=1] at @s run function cryptid:action/spawnnode

execute if score .skinnedtime cryptid.globalevent matches 250 run execute as @a[sort=random, limit=1] at @s run function cryptid:action/spawnnode

execute if score .skinnedtime cryptid.globalevent matches 350 run execute as @a[sort=random, limit=1] at @s run function cryptid:action/spawnnode

execute if score .skinnedtime cryptid.globalevent matches 3 run execute as @a[sort=random, limit=1] at @s run function cryptid:action/killnode

execute if score .skinnedtime cryptid.globalevent matches 253 run execute as @a[sort=random, limit=1] at @s run function cryptid:action/killnode


##kill

execute as @e[tag=cryptid.mimicblock, type=block_display] at @s unless entity @e[type=vindicator, tag=cryptid.mimic, distance=0..2] run kill @s

###flux and world order commands


##harrowandmobticks

execute as @e[type=!player,tag=cryptid, type=!item, type=!#cryptid:projectiles, type=!minecart, type=!boat, type=!falling_block, type=!experience_orb] at @s run function cryptid:tick/tickcryptid

##tick non-cryptid entities

execute as @e[tag=cryptid.catcher, type=armor_stand] at @s run function cryptid:tick/tickcatcher
execute as @e[type=armor_stand,tag=cryptid.playernode] at @s run function cryptid:tick/ticknode
execute as @e[type=villager, tag=cryptid.lessertotem] at @s run function cryptid:tick/ticktotem


##player tick
execute as @a at @s run function cryptid:tick/player/playertick


###randommobnamer

execute if score .global cryptid.day matches 2.. run execute as @e[type=!#cryptid:nonliving, tag=!cryptid.nameinit, type=!#cryptid:projectiles, type=!#can_breathe_under_water] at @s run function cryptid:events/cryptid/nameinit
