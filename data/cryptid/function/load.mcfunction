scoreboard objectives add cryptid.player.sleeptime minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add cryptid.player.crouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add cryptid.player.damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add cryptid.player.maxharmony dummy
scoreboard objectives add cryptid.player.minharmony dummy
scoreboard objectives add cryptid.chomptime dummy
scoreboard objectives add cryptid.handitem dummy
scoreboard objectives add cryptid.world.fury dummy
##gamerules
scoreboard objectives add cryptid.eventhandler dummy
scoreboard objectives add cryptid.randomeventcap dummy
scoreboard objectives add cryptid.totalplayers dummy
scoreboard objectives add cryptid.event.random dummy
scoreboard objectives add cryptid.bosstime dummy
scoreboard objectives add pinhead.state dummy
scoreboard objectives add cryptid.boss.musictime dummy
scoreboard objectives add cryptid.boss.10 dummy
scoreboard objectives add cryptid.squareswordtimer dummy
scoreboard objectives add cryptid.pillartimer dummy
####################PRIUMERS
scoreboard objectives add primer.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add cryptid.lookcounter dummy
scoreboard objectives add boss.circlesword dummy
scoreboard objectives add boss.orbspawner dummy
scoreboard objectives add cryptid.headpeepersmash dummy


##bossbar
bossbar add cryptid.root [{"text":"","color":"red","bold":true},{"text":"\ua061","font":"minecraft:images"}]
bossbar set minecraft:cryptid.root color green
bossbar set minecraft:cryptid.root max 500
bossbar set minecraft:cryptid.root style progress



########other
scoreboard objectives add cryptid.voidtimer dummy
gamerule logAdminCommands false

scoreboard objectives add cryptid.timer dummy

scoreboard objectives add cryptid.damagedealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add cryptid.skytime dummy
scoreboard objectives add cryptid.anitimer2 dummy
scoreboard objectives add cryptid.darksound dummy
scoreboard objectives add cryptid.handdamagetimer dummy
scoreboard objectives add cryptid.pick.cooldown dummy
scoreboard objectives add mimicstart dummy
scoreboard objectives add cryptid.wallspawn dummy
scoreboard objectives add cryptid.crawlerspawn dummy
scoreboard objectives add cryptid.wavespawn dummy
scoreboard objectives add cryptid.anitimer dummy
scoreboard players set 24000 cryptid.anitimer 24000
scoreboard players set 80 cryptid.anitimer 80
scoreboard players set 50 cryptid.anitimer 50
scoreboard players set 70 cryptid.anitimer 70
scoreboard players set 120 cryptid.anitimer 120
scoreboard players set 200 cryptid.anitimer 200


scoreboard players set offset cryptid.anitimer 1
scoreboard players set offset.party cryptid.anitimer -3
scoreboard players set offset.explod cryptid.anitimer -12

scoreboard players set 24000 cryptid.anitimer2 24000
scoreboard players set 1200 cryptid.anitimer2 1200
scoreboard objectives add cryptid.roty dummy
scoreboard objectives add 10t dummy
scoreboard objectives add cryptid.mouth dummy
scoreboard objectives add cryptid.eventcap dummy
scoreboard objectives add cryptid.click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add cryptid.sleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add cryptid.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add cryptid.globalevent dummy
scoreboard players set .globalspawn cryptid.globalevent 102
scoreboard players set maxspawntime cryptid.globalevent 6000
scoreboard players set .globalkill cryptid.globalevent 0
scoreboard players set maxkilltime cryptid.globalevent 1600
scoreboard players set .heartbeat cryptid.globalevent 0
scoreboard players set heartbeatmax cryptid.globalevent 24
scoreboard objectives add cryptid.maxlives dummy
scoreboard objectives add cryptid.time dummy
scoreboard objectives add cryptid.fearscreen dummy
scoreboard objectives add cryptid.challengesec dummy
scoreboard objectives add cryptid.jumptimer dummy
scoreboard objectives add cryptid.armor armor
scoreboard objectives add cryptid.reducedarmor dummy
scoreboard objectives add cryptid.radiocooldown dummy
scoreboard objectives add cryptid.sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add cryptid.walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add cryptid.inair minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add cryptid.day dummy
scoreboard objectives add cryptid.item.lantern.cooldown dummy
scoreboard objectives add cryptid.shotgunammo dummy
scoreboard objectives add cryptid.shotgunammo2 dummy
scoreboard objectives add cryptid.shotgunammo3 dummy
scoreboard objectives add cryptid.shotguntimer dummy

scoreboard players set @a cryptid.shotgunammo 0
scoreboard players set @a cryptid.shotgunammo2 0
scoreboard players set @a cryptid.shotgunammo3 0
scoreboard players set @a cryptid.shotguntimer 0

scoreboard objectives add cryptid.ritual.stability dummy
scoreboard objectives add cryptid.ritual.focicount dummy
scoreboard objectives add cryptid.ritualrangecap dummy
scoreboard objectives add cryptid.ritual.probability dummy
scoreboard objectives add cryptid.ritual.turns dummy

team add cryptid.glitch
team modify cryptid.glitch nametagVisibility always

scoreboard objectives add cryptid.math dummy
scoreboard players set 10 cryptid.math 10
scoreboard players set 2 cryptid.math 2



scoreboard objectives add cryptid.mobhpbase dummy
scoreboard objectives add cryptid.mobattackbase dummy
scoreboard objectives add cryptid.mobspeedbase dummy



scoreboard objectives add cryptid.worldtimer dummy


scoreboard objectives add cryptid.challenge dummy
##heartcount
scoreboard objectives add cryptid.heartcount dummy
scoreboard objectives add cryptid.challengetime dummy

scoreboard objectives add cryptid.random dummy

scoreboard objectives add cryptid.deaths deathCount
scoreboard objectives add cryptid.dopple.id dummy

##playerx

scoreboard objectives add cryptid.playerx dummy
scoreboard objectives add cryptid.playery dummy
scoreboard objectives add cryptid.playerz dummy

scoreboard objectives add cryptid.heartx dummy
scoreboard objectives add cryptid.hearty dummy
scoreboard objectives add cryptid.heartz dummy

scoreboard objectives add cryptid.player.distx dummy
scoreboard objectives add cryptid.player.disty dummy
scoreboard objectives add cryptid.player.distz dummy

scoreboard objectives add cryptid.player.heart.distance dummy
scoreboard objectives add cryptid.player.event dummy


##uncanny variables.. lol

team add cryptid.nocollide
team modify cryptid.nocollide collisionRule never


scoreboard objectives add cryptid.totemblood dummy

scoreboard objectives add cryptid.player.flux dummy

scoreboard objectives add cryptid.player.harmony dummy

scoreboard objectives add cryptid.player.strength armor

scoreboard objectives add cryptid.useitem minecraft.used:minecraft.sugar

scoreboard objectives add cryptid.mob.class dummy
scoreboard objectives add cryptid.player.random dummy

scoreboard objectives add cryptid.player.radioloop dummy


scoreboard objectives add cryptid.infestedtimer dummy

scoreboard objectives add cryptid.mob.movx dummy
scoreboard objectives add cryptid.mob.movy dummy
scoreboard objectives add cryptid.mob.movz dummy
scoreboard objectives add cryptid.jelly.phase dummy
scoreboard objectives add cryptid.damagetaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add cryptid.placetree minecraft.used:minecraft.oak_sapling
scoreboard objectives add cryptid.placetree2 minecraft.used:minecraft.jungle_sapling
scoreboard objectives add cryptid.placetree3 minecraft.used:minecraft.dark_oak_sapling
scoreboard objectives add cryptid.placetree4 minecraft.used:minecraft.acacia_sapling
scoreboard objectives add cryptid.placetree5 minecraft.used:minecraft.spruce_sapling
scoreboard objectives add cryptid.placetree6 minecraft.used:minecraft.birch_sapling
scoreboard objectives add cryptid.placetree7 minecraft.used:minecraft.cherry_sapling

scoreboard objectives add cryptid.bonusharmcooldown dummy


scoreboard objectives add cryptid.player.eventscore dummy
scoreboard objectives add cryptid.range dummy

team add cryptid.evilmob
team modify cryptid.evilmob prefix "Corrupted "
team modify cryptid.evilmob color dark_red
forceload add 0 0

scoreboard players set 20 cryptid.challengetime 20

###team stuff
team add nodeathmessage
team modify nodeathmessage deathMessageVisibility never


scoreboard players set .global 10t 0
##defaults
execute if score .global cryptid.worldtimer matches ..12000 run scoreboard players set .current cryptid.eventcap 0

scoreboard players set -1 cryptid.roty -1
