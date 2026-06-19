item replace entity @s armor.head with potion[minecraft:custom_model_data=1385]
execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .kraken cryptid.anitimer
stopsound @a[distance=..60] ambient
execute as @a[distance=..560] at @s run playsound minecraft:cryptid.jumpchase ambient @s ~ ~ ~ 3 1.4
scoreboard players set @s cryptid.timer 120
tag @s add eating
