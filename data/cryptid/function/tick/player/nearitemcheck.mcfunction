

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cryptid.shotgun:1}}}}] if entity @e[limit=1,type=item, distance=0.1..2, nbt={Item:{components:{"minecraft:custom_data":{cryptid.shotgun:1}}}}] run function cryptid:action/craftshotgun2

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{cryptid.shotgun:2}}}}] if entity @e[limit=1,type=item, distance=0.1..2, nbt={Item:{components:{"minecraft:custom_data":{cryptid.shotgun:2}}}}] run function cryptid:action/craftshotgun3

execute as @s[nbt={Item:{id:"minecraft:sugar",components:{"minecraft:custom_model_data":1309}}}] run kill @s


##check and pickup dead totem

##kill totem tick
execute if items entity @s contents netherrack[minecraft:custom_data~{deadsmalltotem:1}] run execute as @p at @s run function cryptid:action/give/givetotem
execute if items entity @s contents netherrack[minecraft:custom_data~{deadsmalltotem:1}] run kill @s

##fragment cleanser
execute if block ~ ~ ~ fire if items entity @s contents sugar[minecraft:custom_data~{cryptid.heartfrag:1b}] run function cryptid:action/cleanse

##Revive sacrifice
execute if predicate cryptid:check_revive_alter if items entity @s contents sugar[minecraft:custom_data~{cryptid.fullheart:1b}] run function cryptid:events/cryptid/returnedsoul
#-Revive trigger
execute if items entity @s contents potion[minecraft:custom_data~{cryptid.revivetrigger:1b}] at @s run function cryptid:action/reviveplayer

 



