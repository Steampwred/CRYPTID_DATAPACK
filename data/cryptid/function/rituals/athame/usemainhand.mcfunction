## Summon blade
execute anchored feet run summon item_display ^ ^-0.5 ^0.4 {Tags:["cryptid","cryptid.athameproj"],id:"minecraft:item_display",item:{id:"minecraft:air",Count:1},item_display:"none",transformation:[1.0607f,1.0607f,-0.0000f,0.0000f,0.0000f,-0.0000f,-1.4375f,0.0000f,-1.0607f,1.0607f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0}
execute as @e[tag=cryptid.athameproj, tag=!cryptid.markerapplied,type=minecraft:item_display] at @s run function cryptid:action/general/spawntickmarker {"name":"tickprojathame"}

scoreboard players set @s cryptid.athame.cooldown 50

#summon minecraft:zombie ~ ~-4 ~ {Tags:["cryptid","cryptid.orifice"]}
#execute as @e[ tag=cryptid.orifice, tag=!cryptid.markerapplied,type=minecraft:zombie] at @s run function cryptid:action/general/spawntickmarker {"name":"tickorifice"}


# Player effects

