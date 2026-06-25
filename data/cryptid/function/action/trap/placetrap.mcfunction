##placement deny
execute as @p at @s if entity @n[tag=cryptid.trap,type=armor_stand,distance=..1] run return fail
execute as @p at @s if block ~ ~-0.5 ~ air run return fail

summon armor_stand ~ ~ ~ {CustomName:'[{"text":"Bear trap"}]',ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.trap","cryptid.timer","cryptid.ignore.radar"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1366},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

attribute @e[type=minecraft:armor_stand, tag=cryptid.trap,sort=nearest, limit=1] minecraft:generic.scale base set 0.01
scoreboard players set @e[type=minecraft:armor_stand, tag=cryptid.trap,sort=nearest, limit=1] cryptid.timer 100

playsound minecraft:cryptid.trap.set ambient @a[distance=0..20] ~ ~ ~

execute as @e[type=armor_stand, tag=cryptid.trap, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticktrap"}


clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.beartrap:1}] 1