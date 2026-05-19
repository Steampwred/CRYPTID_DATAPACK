##remove tag for wall event
execute as @s at @s if entity @s[tag=wall.chasing,y=50,dy=1000] run tag @s remove wall.chasing
execute as @s[tag=wall.chasing] at @s run function cryptid:tick/player/wallevent


##challgen tick
execute if score .global cryptid.challenge matches 1 run function cryptid:tick/player/challengetick


##primer events
function cryptid:events/eventhandler/primercheck


##dimensiontick
execute if dimension cryptid:below run function cryptid:tick/player/dimension/belowtick


##swrods

execute if score @s cryptid.squareswordtimer matches 1.. run function cryptid:action/player/squaresword


##set to survival or not

execute as @s[gamemode=adventure] run gamemode survival
##bosstick
execute as @s[tag=boss.fight.1] at @s run function cryptid:action/player/fightboss1


##clear music

execute unless entity @s[tag=boss.fight.1] run stopsound @s * minecraft:cryptid.music.presenceloop

##clear boss ticks to make sure
tag @s remove boss.fight.1



##nokb

attribute @s minecraft:generic.knockback_resistance modifier remove 1302
execute as @s[tag=cryptid.nokb] at @s run function cryptid:action/effect/nokb



##leave game simulator
execute as @s[scores={cryptid.leave=1..}] if dimension overworld at @s run function cryptid:action/onjoin
execute as @s[scores={cryptid.leave=1..}] run scoreboard players set @s cryptid.leave 0

##Give Players a Unique ID if not present
execute as @s unless score @s cryptid.player.id = @s cryptid.player.id store result score @s cryptid.player.id run scoreboard players add .global cryptid.player.id 1

##void
execute if entity @s[tag=!cryptid.invoid] run scoreboard players reset @s cryptid.voidtimer
execute as @s at @s if entity @s[y=-64, dy=10000] run tag @s remove cryptid.invoid
execute if entity @s in minecraft:overworld if entity @s[y=-64, dy=-100000] run function cryptid:tick/player/invoid

###fake house event
execute if entity @s[tag=cryptid.housewalking] run function cryptid:action/house/walk

##lower score
scoreboard players remove @s cryptid.timer 1
execute if score @s cryptid.timer matches ..0 run scoreboard players reset @s cryptid.timer
execute if score .global cryptid.day matches 10.. if score @s cryptid.timer matches 2 run function cryptid:events/sky/roamingentity


##spawnstructurte on first join
execute unless score .init cryptid.worldtimer matches 1 run execute as @p at @s run function cryptid:action/world/spawnstructure

##advancement check

execute if score .heartbeat cryptid.globalevent matches 1 run function cryptid:tick/advancementcheck


##clear bar
execute if entity @s[tag=cryptid.radiobar] unless items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run title @s actionbar " "
execute if entity @s[tag=cryptid.radiobar] unless items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run tag @s remove cryptid.radiobar

#######################



####tutorial

execute as @s[tag=player.tutorial] run function cryptid:tick/player/tutorial/starttutorial






##random tape
execute if score .global cryptid.day matches 20 if entity @s[tag=!cryptid.lore.tape,scores={cryptid.player.harmony=..-10000}] run function cryptid:action/give/spawntape
execute if score .global cryptid.day matches 20 if entity @s[tag=!cryptid.lore.tape,scores={cryptid.player.harmony=..-10000}] run tag @s add cryptid.lore.tape


##playing certain radio sounds radio sound controller

execute as @s[scores={cryptid.player.radioloop=1..}] at @s run scoreboard players remove @s cryptid.player.radioloop 1

execute as @s[scores={cryptid.player.radioloop=..0}] at @s run function cryptid:events/resetradiosounds

execute as @s[scores={cryptid.player.radioloop=..0}] at @s run scoreboard players set @s cryptid.player.radioloop 100


##setting up sound instance

execute as @s[tag=!cryptid.radiostarted] at @s run execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:1b}] run playsound minecraft:cryptid.radiolong ambient @s ~ ~ ~ 1000 1 1
execute as @s[tag=!cryptid.radiostarted] at @s run execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:2b}] run playsound minecraft:cryptid.radiolong2 ambient @s ~ ~ ~ 1000 1 1
execute as @s[tag=!cryptid.radiostarted] at @s run execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass.status:3b}] run playsound minecraft:cryptid.radiolong3 ambient @s ~ ~ ~ 1000 1 1

execute as @s[tag=!cryptid.radiostarted] at @s run execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run scoreboard players set @s cryptid.player.radioloop 100


##shutting off sounds
execute as @s at @s run execute unless items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run function cryptid:events/radiosoundoff
execute as @s at @s run execute if items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run tag @s add cryptid.radiostarted
execute as @s at @s run execute unless items entity @s weapon.mainhand sugar[minecraft:custom_data~{cryptid.compass:1b}] run tag @s remove cryptid.radiostarted




##############shotgunhandler

##shotgunround
execute as @e[distance=0..3, type=firework_rocket] at @s if entity @s[type=firework_rocket, nbt={FireworksItem:{components:{"minecraft:custom_data":{cryptid.shotgunarrow:1b}}}}] at @s run function cryptid:action/shotgunhandler
execute as @e[distance=0..3, type=firework_rocket] at @s if entity @s[type=firework_rocket, nbt={FireworksItem:{components:{"minecraft:custom_data":{cryptid.shotgunarrow:2b}}}}] at @s run function cryptid:action/shotgunhandler
execute as @e[distance=0..3, type=firework_rocket] at @s if entity @s[type=firework_rocket, nbt={FireworksItem:{components:{"minecraft:custom_data":{cryptid.shotgunarrow:3b}}}}] at @s run function cryptid:action/shotgunhandler

##skytime
scoreboard players remove @s[scores={cryptid.skytime=1..}] cryptid.skytime 1
scoreboard players set @s cryptid.range 10

##tick world flux first
execute unless score cleared cryptid.globalevent matches 1 run execute as @s[tag=!boss.fight.1] run function cryptid:tick/applyflux

##quote raycast to see if looking...
execute if predicate cryptid:checkcryptid run function cryptid:tick/player/viewcryptidcheck


##mandatory large hitbox check for the mimic entity
execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.mimic,limit=1,sort=random,distance=0..35] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run tag @e[type=vindicator,tag=cryptid.mimic,distance=0..35] add cryptid.lookingmimic

##mandatory large hitbox check for the mountain entity

execute store result score @s cryptid.random run random value 1..10

execute if score @s cryptid.random matches 1 if entity @e[tag=boss.core2, distance=10..] run tag @s remove bosscooldown


execute if score @s cryptid.random matches 1 run execute anchored eyes facing entity @e[type=armor_stand,tag=cryptid.fakemountain,limit=1,sort=random,distance=0..435] eyes anchored feet positioned ^ ^ ^1 rotated as @s[scores={cryptid.random=1}] positioned ^ ^ ^-1 if entity @s[distance=..1.7] run tag @e[type=armor_stand,tag=cryptid.fakemountain,distance=0..435] add cryptid.lookingmountain


###nomove
execute if entity @s[tag=cryptid.moveclear, tag=!cryptid.nomove] at @s run function cryptid:action/player/nomoveclear

execute if entity @s[tag=cryptid.nomove] at @s run function cryptid:action/player/nomove



##other looking mimic
execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.mimic,limit=1,sort=nearest,distance=0..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.3] run tag @e[type=vindicator,tag=cryptid.mimic,distance=0..25] remove firstlook


#####################################item tick
execute if items entity @s weapon.* *[minecraft:custom_data~{cryptid.item:1b}] run function cryptid:tick/player/itemtick
execute if items entity @s weapon.* *[minecraft:custom_data~{cryptid.item:1}] run function cryptid:tick/player/itemtick

####################################biome logic

execute if biome ~ ~ ~ cryptid:empty run stopsound @s
execute if biome ~ ~ ~ cryptid:empty run tag @s add cryptid.blackscreen
execute if biome ~ ~ ~ cryptid:empty run scoreboard players remove @s cryptid.player.harmony 1

##reset damage

scoreboard players set @s cryptid.player.damage 0

##sleeping logic
execute if score @s cryptid.player.sleeptime matches 1.. run function cryptid:action/player/sleep

##remove sleep time
execute if score @s cryptid.sleep matches 1.. run scoreboard players remove @s cryptid.sleep 1

#randomly fix title screen
execute store result score @s cryptid.random run random value 1..40
execute if score @s cryptid.random matches 1 run title @s times 0 3t 0

###worldskyevents
execute store result score @s cryptid.random run random value 1..200

execute if score @s cryptid.random matches 1 run tag @s remove cryptid.mouthtarget

#3black screen worldskyevent
execute as @s at @s[y=60, dy=1000] if score @s cryptid.skytime matches 200..800 run tag @s add cryptid.blackscreen
execute as @s at @s[y=60, dy=1000] if score @s cryptid.random matches 1 if score @s cryptid.skytime matches 900..1000 run tellraw @a {"text":"[Error] Ignoring unknown tag 'minecraft:freedom.approaching'","color":"red"}
execute as @s at @s[y=60, dy=1000] if score @s cryptid.random matches 1 if score @s cryptid.skytime matches 750..900 run tellraw @a {"text":"[Warning] Core shader script has been dropped, this may be a bug","color":"red"}
execute as @s at @s[y=60, dy=1000] if score @s cryptid.random matches 1..5 if score @s cryptid.skytime matches 450..750 run tellraw @a {"text":"[Warning] Your y level is too high","color":"red"}
execute as @s at @s[y=60, dy=1000] if score @s cryptid.random matches 1..5 if score @s cryptid.skytime matches 250..450 run tellraw @a {"text":"Get inside the earth","color":"red"}
execute as @s at @s[y=60, dy=1000] if score @s cryptid.skytime matches 250..260 run playsound minecraft:cryptid.screen.corrupted ambient @s ~ ~ ~ 10000 1
execute as @s at @s[y=60, dy=1000] if score @s cryptid.skytime matches 250..260 run tp @s ~ 1000 ~
execute as @s at @s if score @s cryptid.skytime matches 250..260 run stopsound @a
execute as @s at @s if score @s cryptid.skytime matches 0..249 run kill @e[type=vindicator, tag=cryptid.worldsky]


######################looking spider and looking cryptyids


execute anchored eyes facing entity @e[type=armor_stand,tag=cryptid.lookcount,sort=random,distance=0..95] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.5] run execute as @e[type=armor_stand,tag=cryptid.lookcount,limit=1,sort=random,distance=0..295] at @s run function cryptid:tick/player/lookcounter

execute anchored eyes facing entity @e[type=armor_stand,tag=cryptid.lookcount,sort=random,distance=0..95] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=1.5..] run execute as @e[type=armor_stand,tag=cryptid.lookcount,limit=1,sort=random,distance=0..295] at @s run tag @s remove cryptid.currentlylooking

execute anchored eyes facing entity @e[type=zombie,tag=cryptid.lookcount,sort=random,distance=0..295] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.5] run execute as @e[type=zombie,tag=cryptid.lookcount,limit=1,sort=random,distance=0..295] at @s run function cryptid:tick/player/lookcounter

execute anchored eyes facing entity @e[type=zombie,tag=cryptid.lookcount,sort=random,distance=0..295] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=1.5..] run execute as @e[type=zombie,tag=cryptid.lookcount,limit=1,sort=random,distance=0..295] at @s run tag @s remove cryptid.currentlylooking





##other looking

execute anchored eyes facing entity @e[type=armor_stand,tag=cryptid.spire,limit=1,sort=random,distance=0..95] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.7] run function cryptid:action/spire/view

##pinheadcheck
execute anchored eyes facing entity @e[type=armor_stand,tag=cryptid.pinhead,limit=1,sort=random,distance=0..205] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.9] run execute as @e[type=armor_stand,tag=cryptid.pinhead] at @s run function cryptid:action/pinhead/add

##other checkjs
execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.spider,limit=1,sort=random,distance=0..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run tag @e[type=vindicator,tag=cryptid.spider,limit=1,sort=random,distance=0..25] add cryptid.lookingspider

##looking occult
execute anchored eyes facing entity @e[type=zombified_piglin,tag=cryptid.occult,limit=1,sort=random, distance=0..20] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=zombified_piglin,tag=cryptid.occult,limit=1,sort=nearest] add cryptid.lookingoccult

execute anchored eyes facing entity @e[type=zombified_piglin,tag=cryptid.occult,limit=1,sort=random, distance=0..20] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @s add cryptid.glitchscreen

##looking pacman
execute as @s at @s anchored eyes facing entity @e[type=vindicator,tag=cryptid.chomper,limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players remove @e[type=vindicator,tag=cryptid.chomper,limit=1,sort=nearest] cryptid.chomptime 1

execute as @s at @s anchored eyes facing entity @e[type=vindicator,tag=cryptid.chomper,limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run effect give @e[type=vindicator,tag=cryptid.chomper,limit=1,sort=nearest] speed 4 4 true

##looking tortured
execute as @s at @s anchored eyes facing entity @e[type=zombified_piglin,tag=cryptid.tortured,limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run tag @s add cryptid.glitchscreen

##looking minecart?

execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.deci2,limit=1,sort=random,distance=0..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run effect give @e[tag=cryptid.deci2,type=vindicator, sort=random, limit=1] slowness 1 100 true

##looking hand
execute anchored eyes facing entity @e[type=vindicator,tag=cryptid.hand,limit=1,sort=random,distance=0..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run function cryptid:action/hand/looktest


##looking mimic worm
execute anchored eyes facing entity @e[type=villager,tag=cryptid.shy2,limit=1,sort=random,distance=0..15] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function cryptid:action/shy2/vanish




##swapper

execute as @s[tag=cryptid.readytoswap] at @s run tp @s ^10 ^10 ^50 facing entity @e[sort=random, limit=1]
execute as @s[tag=cryptid.readytoswap] at @s run function cryptid:action/captureswapper
execute as @s[tag=cryptid.readytoswap] at @s run tag @s remove cryptid.readytoswap



##death logic
execute as @s[scores={cryptid.deaths=1..,cryptid.maxlives=1}] at @s run tellraw @a ["",{"color":"dark_red","bold":true,"selector":"@s"}," has run out of lives! May their soul rest in peace.."]

execute as @s[scores={cryptid.deaths=1..,cryptid.maxlives=1}] at @s run playsound minecraft:entity.wither.death ambient @a ~ ~ ~ 0.1 0.1

execute as @s[scores={cryptid.deaths=1..}] at @s run function cryptid:action/player/ondeath

execute as @s[scores={cryptid.maxlives=0}] at @s run gamemode spectator

execute as @s[scores={cryptid.maxlives=0}] at @s run tag @s add cryptid.dead

execute as @s[scores={cryptid.maxlives=1..}, tag=cryptid.dead] at @s run gamemode survival

execute as @s[scores={cryptid.maxlives=1..}, tag=cryptid.dead] at @s run tag @s remove cryptid.dead


##radiomissing
execute as @s[tag=cryptid.missingradio] run execute store result score @s cryptid.random run random value 1..200

execute as @s[tag=cryptid.missingradio,tag=!cryptid.radiomessage1] if score @s cryptid.random matches 1 run tellraw @s [{"text":"You can craft a new radio with 1 redstone and 1 iron","color":"gray"}]

execute as @s[tag=cryptid.missingradio,tag=!cryptid.radiomessage1] if score @s cryptid.random matches 1 run tag @s add cryptid.radiomessage1

##items

execute as @s if score @s cryptid.pick.cooldown matches 1.. run scoreboard players remove @s cryptid.pick.cooldown 1

##rese crtouch
scoreboard players set @s cryptid.player.crouch 0

##commandstoragehandling

execute as @e[type=vindicator, tag=cryptid.vorheart, sort=nearest, limit=1] at @s run function cryptid:tick/getheartdistance
execute if score .heartbeat cryptid.globalevent matches 1 run function cryptid:tick/calculateheartdistance


execute as @s[tag=!cryptid.init] at @s run function cryptid:events/init
##end init functions



execute as @s[tag=cryptid.nokb] at @s run attribute @s minecraft:generic.knockback_resistance modifier add 1300 120 add_value

execute store result score @s cryptid.random run random value 1..20

execute if score @s[tag=!cryptid.nokb] cryptid.random matches 1 run attribute @s minecraft:generic.knockback_resistance modifier remove 1300

execute unless block ~ ~-1 ~ air run attribute @s minecraft:generic.gravity modifier remove 1301
execute unless block ~ ~-1 ~ air run attribute @s minecraft:generic.fall_damage_multiplier modifier remove 1301


##fearsreen and effects

execute as @s[tag=cryptid.fearscreen] at @s run function cryptid:action/effect/cyclefear
execute as @s[tag=!cryptid.fearscreen] at @s run scoreboard players set @s cryptid.fearscreen 0
##remove fearscreen
tag @s remove cryptid.fearscreen


#cyclefake
execute as @s[tag=cryptid.fakescreen] at @s run function cryptid:action/effect/cyclefake
##remove fakescreen
tag @s remove cryptid.fakescreen




execute as @s[scores={cryptid.radiocooldown=1..}] at @s run scoreboard players remove @s cryptid.radiocooldown 1


##ambience effects

##longer one
execute as @s at @s if entity @s[y=130, dy=1000] run tag @s add cryptid.playdark2
execute as @s at @s if entity @s[y=0, dy=-1000] run tag @s add cryptid.playdark2


##less one
execute as @s at @s if score @s cryptid.player.harmony matches ..-10000 run tag @s add cryptid.playdark
execute as @s at @s if score .global cryptid.day matches 20.. if score .global cryptid.time matches 13000..23000 run tag @s add cryptid.playdark


###clicke glitch effects
execute as @s[tag=cryptid.glitchscreen] run function cryptid:action/effect/cycleglitch
tag @s remove cryptid.glitchscreen

execute as @s[tag=cryptid.blackscreen] run function cryptid:action/effect/cycleblack
tag @s remove cryptid.blackscreen

execute as @s[tag=cryptid.playdark] run function cryptid:action/effect/cycledark
tag @s remove cryptid.playdark

execute as @s[tag=cryptid.playdark2] run function cryptid:action/effect/cycledark2
tag @s remove cryptid.playdark2
scoreboard players add @s cryptid.darksound 1

##dreamcatcher
execute as @s[tag=!cryptid.recipe.catcher] at @s if score .globaltime cryptid.time matches 14000 run function cryptid:action/give/givecatcherrecipe


##check hints
execute if score .heartbeat cryptid.globalevent matches 3 run function cryptid:tick/player/hintcheck


##fixes
execute as @s if score @s cryptid.shotgunammo matches ..-1 run scoreboard players set @s cryptid.shotgunammo 0
execute as @s if score @s cryptid.shotgunammo2 matches ..-1 run scoreboard players set @s cryptid.shotgunammo2 0
execute as @s if score @s cryptid.shotgunammo3 matches ..-1 run scoreboard players set @s cryptid.shotgunammo3 0


##testing

scoreboard players set @s cryptid.sprinting 0
scoreboard players set @s cryptid.walking 0
scoreboard players set @s cryptid.inair 0


##tick player chased tag
execute if entity @s[tag=cryptid.bosschase] run function cryptid:tick/player/bosschase
tag @s remove cryptid.bosschase

scoreboard players set @s cryptid.click 0
scoreboard players set @s cryptid.damagetaken 0

execute as @e[type=item, distance=0.2..8] at @s run function cryptid:tick/player/nearitemcheck
