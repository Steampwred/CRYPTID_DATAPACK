summon armor_stand ~ ~ ~ {ShowArms:1b,CustomName:'[{"translate":"cryptid.entity.unending_despair"}]', Invisible:1,DeathLootTable:{},attributes:[{id:"generic.scale",base:0.0625f}], CanBreakDoors:1,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.caveeye"],equipment:{head:{id:potion,components:{"minecraft:custom_model_data":1340},count:1}},drop_chances:{head:0f}}

effect give @e[type=armor_stand, tag=cryptid.caveeye] minecraft:invisibility infinite 1 true
scoreboard players set @e[tag=cryptid.caveeye, type=armor_stand] cryptid.mob.class 2


execute as @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1] at @s run execute store result score @s cryptid.player.random run random value 2..10

attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=1}] minecraft:generic.scale base set 1.1
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=2}] minecraft:generic.scale base set 0.6
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=3}] minecraft:generic.scale base set 1.5
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=4}] minecraft:generic.scale base set 0.34
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=5}] minecraft:generic.scale base set 2.1
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=6}] minecraft:generic.scale base set 1.72
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=7}] minecraft:generic.scale base set 1.2
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=8}] minecraft:generic.scale base set 0.9
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=9}] minecraft:generic.scale base set 0.7
attribute @e[type=armor_stand, tag=cryptid.caveeye, sort=nearest, limit=1,scores={cryptid.player.random=10}] minecraft:generic.scale base set 1.3



item replace entity @e[type=armor_stand, tag=cryptid.caveeye] armor.head with potion[minecraft:custom_model_data=1340] 1
execute as @e[type=armor_stand, tag=cryptid.caveeye] at @s run tp @s ~ ~ ~ facing entity @p


particle block{block_state:{Name:red_glazed_terracotta}} ~ ~1 ~ 10 10 10 0 10
playsound minecraft:cryptid.earth.ambient ambient @a[distance=0..30] ~ ~-10 ~ 10 0.2


function cryptid:events/cryptid/flicker4