particle end_rod ~ ~ ~ 3 3 3 1 100

#summon armor_stand ~ ~30 ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cryptid","ritual.exorcise"]}
summon armor_stand ~ ~1 ~ {NoGravity:1b,DisabledSlots:4144959, Invisible:1b,CustomName:'[{"text":"Burning Bright Soul"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.purifier","cryptid.ignore.totemward","cryptid.timer"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1359},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


particle dust_color_transition{from_color:[0.4,0.4,0.4],to_color:[1.0,1.0,1.0],scale:4} ~ ~.5 ~ 0.8 1 0.8 3 75

execute as @e[tag=cryptid.purifier,type=armor_stand,tag =!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickpurifier"}


playsound item.trident.thunder master @a ~ ~ ~ 1 2