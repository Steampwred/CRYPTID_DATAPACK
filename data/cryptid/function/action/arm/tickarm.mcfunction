
scoreboard players remove @s[scores={cryptid.handitem=1..}] cryptid.handitem 1



execute if score @s cryptid.click matches 1.. run item modify entity @s weapon.mainhand cryptid:arm1
#item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[custom_name='["",{"text":"Magic Hand","italic":false,"color":"red"}]',lore=['["",{"text":"It\'s still warm..","italic":false,"color":"dark_gray"}]','["",{"text":"[","italic":false,"color":"dark_gray"},{"text":"Right click","italic":false,"bold":true,"color":"yellow"},{"text":" to use]","italic":false,"color":"dark_gray"}]','[""]','["",{"text":"(has a chance of killing","italic":false,"color":"dark_gray"}]','["",{"text":"the user.)","italic":false,"color":"dark_gray"}]'],attribute_modifiers={modifiers:[{type:"generic.gravity",amount:0.6,slot:mainhand,operation:add_multiplied_base,id:1757202162694},{type:"generic.movement_speed",amount:1.008,slot:mainhand,operation:add_multiplied_base,id:1757202162695},{type:"generic.movement_efficiency",amount:100,slot:mainhand,operation:add_multiplied_base,id:1757202162696},{type:"generic.step_height",amount:5,slot:mainhand,operation:add_multiplied_base,id:1757202162697},{type:"generic.water_movement_efficiency",amount:1,slot:mainhand,operation:add_multiplied_base,id:1757202162698},{type:"generic.safe_fall_distance",amount:1024,slot:mainhand,operation:add_multiplied_base,id:1757202162699},{type:"generic.jump_strength",amount:0.4,slot:mainhand,operation:add_multiplied_base,id:1757202162700}],show_in_tooltip:false},custom_model_data=1309,custom_data={cryptid.item:1,cryptid.arm:1b}]

execute if score @s cryptid.click matches 1.. run scoreboard players set @s cryptid.handitem 15


execute if score @s cryptid.click matches 1.. run execute anchored eyes positioned ^ ^ ^4 as @e[distance=0..3.6, sort=nearest, limit=1, type=!#cryptid:nonliving,tag=!cryptid.handed] at @s unless items entity @s weapon.* minecraft:warped_fungus_on_a_stick[custom_data~{cryptid.arm:1b}] run function cryptid:action/party/explode





execute if score @s cryptid.handitem matches 0 run item modify entity @s weapon.mainhand cryptid:arm2
#item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[custom_name='["",{"text":"Magic Hand","italic":false,"color":"red"}]',lore=['["",{"text":"It\'s still warm..","italic":false,"color":"dark_gray"}]','["",{"text":"[","italic":false,"color":"dark_gray"},{"text":"Right click","italic":false,"bold":true,"color":"yellow"},{"text":" to use]","italic":false,"color":"dark_gray"}]','[""]','["",{"text":"(has a chance of killing","italic":false,"color":"dark_gray"}]','["",{"text":"the user.)","italic":false,"color":"dark_gray"}]'],attribute_modifiers={modifiers:[{type:"generic.gravity",amount:0.6,slot:mainhand,operation:add_multiplied_base,id:1757202162694},{type:"generic.movement_speed",amount:1.008,slot:mainhand,operation:add_multiplied_base,id:1757202162695},{type:"generic.movement_efficiency",amount:100,slot:mainhand,operation:add_multiplied_base,id:1757202162696},{type:"generic.step_height",amount:5,slot:mainhand,operation:add_multiplied_base,id:1757202162697},{type:"generic.water_movement_efficiency",amount:1,slot:mainhand,operation:add_multiplied_base,id:1757202162698},{type:"generic.safe_fall_distance",amount:1024,slot:mainhand,operation:add_multiplied_base,id:1757202162699},{type:"generic.jump_strength",amount:0.4,slot:mainhand,operation:add_multiplied_base,id:1757202162700}],show_in_tooltip:false},custom_model_data=1308,custom_data={cryptid.item:1,cryptid.arm:1b}]