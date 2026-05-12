summon armor_stand ~ ~ ~ {Marker:1, DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Party Cloud"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.party","cryptid.timer"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f]}
summon armor_stand ~0.3 ~0.1 ~ {Marker:1, DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Party Cloud"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.party","cryptid.timer"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f]}
summon armor_stand ~-0.1 ~0.3 ~0.2 {Marker:1, DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Party Cloud"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.party","cryptid.timer"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f]}


data merge entity @s {DeathLootTable:"cryptid:prion"}

execute positioned ~ ~ ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.party] cryptid.mob.class 0



execute as @e[type=armor_stand, tag=cryptid.party, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickparty"}



##particl;e

particle item{item:{id:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 0.2 150

##sounds
playsound minecraft:cryptid.party.explode ambient @a
playsound minecraft:cryptid.party.explode ambient @a ~ ~ ~ 4 1.2
playsound minecraft:cryptid.party.explode ambient @a ~ ~ ~ 4 0.8


damage @s[tag=cryptid] 50 fireworks by @p
damage @s[tag=!cryptid] 80 magic by @p
tag @s add cryptid.handed