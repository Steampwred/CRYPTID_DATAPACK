summon zombie ~ ~ ~ {Invincible:1, NoAI:1, DisabledSlots:4144959, Invisible:1, Silent:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Strained Tumor"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.tumor"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1413},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

effect give @e[type=zombie, sort=nearest, tag=cryptid.tumor] minecraft:invisibility infinite 1 true

playsound minecraft:entity.warden.emerge ambient @a[distance=0..30] ~ ~ ~ 1 0.1
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:netherrack replace #minecraft:base_stone_overworld
execute as @e[type=zombie, tag=cryptid.tumor, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticktumor"}
