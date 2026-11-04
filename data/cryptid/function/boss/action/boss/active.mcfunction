scoreboard players add @s cryptid.bosstime 1


##add active
tag @a[distance=0..50,tag=!bosscooldown] add boss.fight.1


##unactive
execute unless entity @a[tag=boss.fight.1] run tag @s remove active


##tp lost players back


execute as @a[tag=boss.fight.1, distance=40..] at @s run function cryptid:action/player/tpboss
tp @a[tag=boss.fight.1, distance=40..] ~ ~ ~



execute as @e[type=item_display,tag=pillardisplay] unless predicate cryptid:checkriding2 run kill @s

##############music timer




##10t
scoreboard players add @s cryptid.boss.10 1
execute if score @s cryptid.boss.10 matches 40.. run scoreboard players set @s cryptid.boss.10 0


scoreboard players add @s cryptid.boss.musictime 1
execute if score @s cryptid.boss.musictime matches 5599 run stopsound @a * minecraft:cryptid.music.presenceloop
execute if score @s cryptid.boss.musictime matches 5590.. run playsound minecraft:cryptid.music.presenceloop ambient @a[distance=0..90, tag=boss.fight.1] ~ ~ ~ 199
execute if score @s cryptid.boss.musictime matches 5590.. run scoreboard players set @s cryptid.boss.musictime 0


###############phase planning

##each phase is two minutes
##phase A attacks


###action scores
execute if score @s boss.circlesword matches 1.. run function cryptid:boss/action/boss/circlesword
execute if score @s boss.circlesword matches 1.. run stopsound @a * minecraft:cryptid.sword.spawn
execute if score @s boss.circlesword matches 1.. run stopsound @a * minecraft:cryptid.sword.hit

###action scores2
execute if score @s boss.orbspawner matches 1.. run function cryptid:boss/action/boss/spawnorbs


##reset
execute if score @s cryptid.bosstime matches 3000.. run scoreboard players set @s cryptid.bosstime 0


execute if score @s[tag=!phase2] cryptid.bosstime matches 0..1000 run function cryptid:boss/tick/bossmain/phasea1
execute if score @s[tag=!phase2] cryptid.bosstime matches 1000..2000 run function cryptid:boss/tick/bossmain/phasea2
execute if score @s[tag=!phase2] cryptid.bosstime matches 2000..3000 run function cryptid:boss/tick/bossmain/phasea3

##transitions:
execute if score @s[tag=!phase2] cryptid.bosstime matches 0 run function cryptid:boss/tick/bossmain/tran1
execute if score @s[tag=!phase2] cryptid.bosstime matches 1500 run function cryptid:boss/tick/bossmain/tran1

##transition B
execute if score @s[tag=phase2] cryptid.bosstime matches 0 run function cryptid:boss/tick/bossmain/tran2
execute if score @s[tag=phase2] cryptid.bosstime matches 1500 run function cryptid:boss/tick/bossmain/tran2




##phase B attacks
execute if score @s[tag=phase2] cryptid.bosstime matches 0..1000 run function cryptid:boss/tick/bossmain/phaseb1
execute if score @s[tag=phase2] cryptid.bosstime matches 1000..2000 run function cryptid:boss/tick/bossmain/phaseb2
execute if score @s[tag=phase2] cryptid.bosstime matches 2000..3000 run function cryptid:boss/tick/bossmain/phaseb3
