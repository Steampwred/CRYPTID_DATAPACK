

summon villager ~ ~ ~ {CustomName:'[{"translate":"item.cryptid.lesser_bloodstone_totem.name","color":"red"}]',VillagerData:{type:"minecraft:plains",profession:"minecraft:nitwit",level:2},NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.lessertotem","cryptid.ignore.radar","cryptid.ignore.totemward","this"],active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":1318},count:1}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],attributes:[{id:"minecraft:generic.armor",base:15.0d},{id:"minecraft:generic.scale",base:0.05d},{id:"minecraft:generic.gravity",base:1.0d},{id:"minecraft:generic.movement_speed",base:0.0d}]}

attribute @n[type=villager,tag=cryptid.lessertotem,tag=this,distance=..1,limit=1] minecraft:generic.scale base set 1

playsound minecraft:block.ancient_debris.place ambient @a ~ ~ ~ 1 0.1
particle minecraft:crimson_spore ~ ~2 ~ 0.5 0.5 0.5 1 400

data merge entity @n[type=villager,tag=cryptid.lessertotem,tag=this,distance=..1,limit=1] {HandItems:[{},{id:netherrack,components:{"minecraft:custom_data":{deadsmalltotem:1}},count:1}],HandDropChances:[0f,1f]}

scoreboard players set @n[type=villager,tag=cryptid.lessertotem,tag=this,distance=..1,limit=1] cryptid.totemblood 1
tp @n[type=villager,tag=cryptid.lessertotem,tag=this,distance=..1,limit=1] ~ ~ ~ facing entity @p

function cryptid:action/general/spawntickmarker {"name":"ticktotem"}


tag @n[type=villager,tag=cryptid.lessertotem,tag=this,distance=..1,limit=1] add totemfirst
tag @n[type=villager,tag=cryptid.lessertotem,tag=this,distance=..1,limit=1] remove this

## kill marker entity
kill @s