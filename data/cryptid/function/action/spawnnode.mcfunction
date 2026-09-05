summon armor_stand ~ ~-1 ~ {CustomName:'[{"translate":"cryptid.entity.ambience"}]', Marker:1b, NoGravity:1, Small:1b, ShowArms:1b,Invisible:1b,DisabledSlots:63,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid.playernode"]}

scoreboard players set @e[tag=cryptid.playernode,type=armor_stand] cryptid.mob.class 2


execute as @e[type=minecraft:armor_stand, tag=cryptid.playernode] at @s run attribute @s minecraft:generic.scale base set 0.01