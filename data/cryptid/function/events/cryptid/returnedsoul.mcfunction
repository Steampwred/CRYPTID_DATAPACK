#Visual and sound effects
tellraw @p {"text":"The Heart calls out into the Flesh... Somthing familar awnsers","color":"red"}
playsound minecraft:cryptid.fog.ambient ambient @a[distance=0..20]
effect give @a[distance=0..20] blindness 1 1 true
playsound minecraft:entity.warden.emerge ambient @a[distance=0..20] ~ ~ ~ 1 1.2

particle dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[1.0,1.0,1.0],scale:4} ~ ~-1.5 ~ 0.8 0.7 0.8 3 75
particle item{item:{id:cobblestone}} ~ ~-1.5 ~ 0.2 0.3 0.2 0.2 900

#Spread Flesh
fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 red_concrete replace #walls
fill ~ ~ ~ ~ ~-2 ~ minecraft:air
fill ~2 ~-1 ~2 ~-2 ~-3 ~-2 minecraft:netherrack replace #minecraft:overworld_carver_replaceables
fill ~2.5 ~-3 ~1 ~-2.5 ~-5 ~-1 minecraft:red_terracotta replace #minecraft:overworld_carver_replaceables
fill ~1 ~-3 ~2.5 ~-1 ~-5 ~-2.5 minecraft:red_terracotta replace #minecraft:overworld_carver_replaceables

#summon familiar soul
summon vindicator ~ ~-2 ~ {Silent:1b,Tags:["cryptid","cryptid.digger"],CustomName:'{"color":"red","text":"Familiar Soul"}',CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":1303,"minecraft:custom_data":{cryptid.revivetrigger:1b}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F]} 
effect give @n[type=vindicator, tag=cryptid.digger] slowness 1 5 true

scoreboard players set @e[tag=cryptid.digger,type=vindicator] cryptid.mob.class 2 

execute as @e[type=vindicator, tag=cryptid.digger, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdigger"}

kill @s
