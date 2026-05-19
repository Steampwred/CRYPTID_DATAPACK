execute store result score @s cryptid.random run random value 1..70


##damage

tag @s remove hitting
execute if entity @e[type=!#cryptid:nonliving,type=!player, distance=0.1..7] run tag @s add hitting




##reset head
execute if entity @s[tag=!dig] run item replace entity @s armor.head with potion[custom_model_data=1404]
execute if entity @s[tag=!dig,tag=hitting] run item replace entity @s armor.head with potion[custom_model_data=1405]
execute if entity @s[tag=dig] unless block ~ ~2 ~ air run item replace entity @s armor.head with air


##hiting logic
execute if entity @s[tag=!dig, tag=hitting] run tp @s ~ ~ ~ facing entity @e[type=!#cryptid:nonliving, type=!player, distance=0.1..8, sort=nearest, limit=1]
execute if entity @s[tag=!dig, tag=hitting] run damage @e[type=!#cryptid:nonliving, type=!player, distance=0.1..4, sort=nearest, limit=1] 1 cryptid:chomp by @s
execute if entity @s[tag=!dig, tag=hitting] run effect give @e[type=!#cryptid:nonliving, type=!player, distance=0.1..4, sort=nearest, limit=1] slowness 2 2 true


##looking
execute if score .globaltime cryptid.time matches 1..13000 if entity @s[scores={cryptid.lookcounter=1..}] run tag @s add dig


##despawn
execute if score @s cryptid.timer matches ..-6000 run function cryptid:events/quietkill
execute if entity @p[distance=150..] run function cryptid:events/quietkill



execute if entity @p[distance=0..10] if score @s cryptid.random matches 2 run tag @s add dig
execute if entity @p[distance=0..6] if score @s cryptid.random matches 2..10 run tag @s add dig

##distance
execute if entity @p[distance=12..] if score @s cryptid.random matches 2 run tag @s remove dig



##reset looking
execute if entity @p[distance=10..] run scoreboard players set @s cryptid.lookcounter 0
execute if entity @p[distance=10..] run tag @s remove cryptid.currentlylooking



##dig
execute rotated as @s if entity @s[tag=dig] at @s if block ~ ~3 ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~-0.37 ~
execute rotated as @s if entity @s[tag=dig] at @s if block ~ ~3 ~ #minecraft:enchantment_power_transmitter run execute positioned ~ ~3 ~ positioned over motion_blocking_no_leaves run particle block{block_state:{Name:red_concrete}} ~ ~-0.2 ~ 0.2 0.2 0.2 0 75



##undig
execute rotated as @s if entity @s[tag=!dig] at @s unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~0.37 ~
execute rotated as @s if entity @s[tag=!dig] at @s unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run execute positioned ~ ~3 ~ positioned over motion_blocking_no_leaves run particle block{block_state:{Name:red_concrete}} ~ ~-0.2 ~ 0.2 0.2 0.2 0 75


execute store result score @s cryptid.random run random value 1..370
execute if score @s[tag=!dig] cryptid.random matches 1 run playsound minecraft:entity.hoglin.converted_to_zombified ambient @a ~ ~-5 ~ 1 0.1


##sound

execute store result score @s cryptid.random run random value 1..70

execute as @s[tag=!dig] if score @s cryptid.random matches 2 run playsound minecraft:cryptid.head.scream ambient @a ~ ~ ~ 1.2 0.5

