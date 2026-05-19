execute unless score .globaltime cryptid.time matches 1..14000 run tp @s ~ ~ ~ facing entity @p
execute unless score .globaltime cryptid.time matches 1..14000 run execute if score .heartbeat cryptid.globalevent matches 1 unless entity @s[tag=chained] run execute if entity @p[distance=0..55] at @s run tp @s ^ ^ ^2 facing entity @p
execute unless score .globaltime cryptid.time matches 1..14000 run execute if score .heartbeat cryptid.globalevent matches 1 unless entity @s[tag=chained] run playsound minecraft:block.stone.break ambient @a
execute unless score .globaltime cryptid.time matches 1..14000 run execute if score .heartbeat cryptid.globalevent matches 1 unless entity @s[tag=chained] run execute if entity @p[distance=0..55] at @s run execute align xyz run tp @s ~0.5 ~ ~0.5

effect give @s minecraft:invisibility infinite 20 true
effect give @s minecraft:regeneration infinite 5 true


execute store result score @s cryptid.player.random run random value 1..120000


execute if score @s cryptid.player.random matches 300 run function cryptid:events/quietkill

execute if score @s cryptid.player.random matches 1..1500 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:red_terracotta replace #minecraft:overworld_carver_replaceables


attribute @s minecraft:generic.knockback_resistance base set 120
attribute @s minecraft:generic.attack_knockback base set 2



item replace entity @s armor.head with potion[minecraft:custom_model_data=1303]
execute if score .globaltime cryptid.time matches 1..14000 unless predicate cryptid:checklight run item replace entity @s armor.head with potion[minecraft:custom_model_data=1317]

effect give @s minecraft:slowness infinite 255 true



execute if block ~ ~-1 ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~-1 ~

##kill

execute if block ~ ~ ~ lava run function cryptid:events/quietkill
execute if block ~ ~-1 ~ magma_block run function cryptid:events/quietkill
execute if block ~ ~-1 ~ pointed_dripstone run function cryptid:events/quietkill