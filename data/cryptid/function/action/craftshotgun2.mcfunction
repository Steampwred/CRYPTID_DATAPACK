execute as @p run function cryptid:action/give/giveshotgun2
kill @e[limit=1,type=item, distance=0.1..2, nbt={Item:{components:{"minecraft:custom_data":{cryptid.shotgun:1b,cryptid.maxammo:1}}}}]
kill @s