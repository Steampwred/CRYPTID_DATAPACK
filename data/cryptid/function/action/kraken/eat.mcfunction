item replace entity @s armor.head with potion[minecraft:custom_model_data=1385]
execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .kraken cryptid.anitimer
scoreboard players set @s cryptid.timer 0
tag @s add eating
