##summon replaceitem
summon item ~ ~ ~ {Tags:["cryptid.corruptitem"],Item:{id:sugar,count:1,components:{custom_data:{randomval:0b},custom_model_data:1309,custom_name:'["",{"translate":"item.cryptid.corruptitem.name","font":"minecraft:images"}]'}}}
summon item ~ ~0.01 ~ {Tags:["cryptid.corruptitem"],Item:{id:sugar,count:1,components:{custom_data:{randomval:0b},custom_model_data:1309,custom_name:'["",{"translate":"item.cryptid.corruptitem.name","font":"minecraft:images"}]'}}}
summon item ~ ~0.02 ~ {Tags:["cryptid.corruptitem"],Item:{id:sugar,count:1,components:{custom_data:{randomval:0b},custom_model_data:1309,custom_name:'["",{"translate":"item.cryptid.corruptitem.name","font":"minecraft:images"}]'}}}


##summon dummyitem
summon item ^ ^1 ^2 {PickupDelay:35,Tags:["cryptid.dcorruptitem"],Item:{id:stone,count:1}}


##copy item to new item
data modify entity @e[tag=cryptid.dcorruptitem, type=item, sort=nearest, limit=1] Item set from entity @s SelectedItem


##random score to make it it not stack
execute store result score @s cryptid.random run random value 1..10000
execute store result storage cryptid:randomval val.x int 1 run scoreboard players get @s cryptid.random 
data modify entity @e[tag=!init,tag=cryptid.corruptitem, type=item, sort=nearest, limit=1] Item.components."minecraft:custom_data".randomval set from storage cryptid:randomval val.x
tag @e[tag=!init,tag=cryptid.corruptitem, type=item, sort=nearest, limit=1] add init

##random score to make it it not stack
execute store result score @s cryptid.random run random value 1..10000
execute store result storage cryptid:randomval val.x int 1 run scoreboard players get @s cryptid.random 
data modify entity @e[tag=!init,tag=cryptid.corruptitem, type=item, sort=nearest, limit=1] Item.components."minecraft:custom_data".randomval set from storage cryptid:randomval val.x
tag @e[tag=!init,tag=cryptid.corruptitem, type=item, sort=nearest, limit=1] add init

##random score to make it it not stack
execute store result score @s cryptid.random run random value 1..10000
execute store result storage cryptid:randomval val.x int 1 run scoreboard players get @s cryptid.random 
data modify entity @e[tag=!init,tag=cryptid.corruptitem, type=item, sort=nearest, limit=1] Item.components."minecraft:custom_data".randomval set from storage cryptid:randomval val.x
tag @e[tag=!init,tag=cryptid.corruptitem, type=item, sort=nearest, limit=1] add init


item replace entity @s weapon.mainhand with air




##kill item if stone


execute as @e[tag=cryptid.dcorruptitem, type=item] if data entity @s {Item:{id:"minecraft:stone"}} run kill @s