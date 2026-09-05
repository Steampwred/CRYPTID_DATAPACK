execute store result score @s cryptid.player.random run random value 1..6

#armboy
execute if score @s cryptid.player.random matches 1..2 run summon item_display ~ 300 ~ {CustomName:'{"color":"dark_red","translate":"cryptid.entity.silent_behemoth"}',Tags:["cryptid","cryptid.skygrabber"],item:{id:potion,components:{"minecraft:custom_model_data":1370},count:1},item_display:"head",view_range:2,width:80,height:200,teleport_duration:5}

##skull
execute if score @s cryptid.player.random matches 3 run summon item_display ~ 300 ~ {CustomName:'{"color":"dark_red","translate":"cryptid.entity.silent_behemoth"}',Tags:["cryptid","cryptid.skygrabber"],item:{id:potion,components:{"minecraft:custom_model_data":1302},count:1},item_display:"head",view_range:2,width:50,height:50,teleport_duration:5}

##whale
execute if score @s cryptid.player.random matches 4 run summon item_display ~ 300 ~ {CustomName:'{"color":"dark_red","translate":"cryptid.entity.silent_behemoth"}',Tags:["cryptid","cryptid.skygrabber"],item:{id:potion,components:{"minecraft:custom_model_data":1334},count:1},item_display:"head",view_range:2,width:110,height:180,teleport_duration:5}

##curator
execute if score @s cryptid.player.random matches 5 run summon item_display ~ 300 ~ {CustomName:'{"color":"dark_red","translate":"cryptid.entity.silent_behemoth"}',Tags:["cryptid","cryptid.skygrabber"],item:{id:potion,components:{"minecraft:custom_model_data":1337},count:1},item_display:"head",view_range:2,width:60,height:60,teleport_duration:5}

## Nerve
execute if score @s cryptid.player.random matches 6 run summon item_display ~ 300 ~ {CustomName:'{"color":"dark_red","translate":"cryptid.entity.silent_behemoth"}',Tags:["cryptid","cryptid.skygrabber"],item:{id:potion,components:{"minecraft:custom_model_data":1354},count:1},item_display:"head",view_range:2,width:300,height:300,teleport_duration:5}



##finalize
execute as @e[type=item_display, tag=cryptid.skygrabber, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticklowskyroamer"}

#execute as @e[type=minecraft:armor_stand,tag=cryptid.skygrabber] at @s run attribute @s minecraft:generic.scale base set 36


playsound minecraft:cryptid.deep.vibrate ambient @a ~100 ~100 ~ 100 0.4