execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{cryptid.voidtotem:1}] run effect give @s minecraft:regeneration 1 10 true




execute if entity @s[tag=!invoid] run playsound minecraft:cryptid.back.darker ambient @s ~ ~-1000 ~ 100000 0.2
tag @s add cryptid.invoid

###timer


scoreboard players add @s cryptid.voidtimer 1

#effect give @s minecraft:blindness 10 1 true



##spawning things

execute if score @s cryptid.voidtimer matches 100 run function cryptid:events/void/wyrmalt
execute if score @s cryptid.voidtimer matches 600 run function cryptid:events/void/wyrmalt
execute if score @s cryptid.voidtimer matches 1100 run function cryptid:events/void/wyrmalt
execute if score @s cryptid.voidtimer matches 1600 run function cryptid:events/void/wyrmalt


##skip

execute if score @s cryptid.voidtimer matches 100 run tellraw @s[tag=cryptid.skipvoidcut] {"translate":"cryptid.event.void.skip1","color":"red"}

execute if score @s cryptid.voidtimer matches 200 run tellraw @s[tag=cryptid.skipvoidcut] {"translate":"cryptid.event.void.skip2","color":"red"}

execute if score @s cryptid.voidtimer matches 250 run execute in cryptid:below run tp @s ~ 500 ~

execute if score @s cryptid.voidtimer matches 250 run effect give @s minecraft:slow_falling 100 0 true



##message

execute if score @s cryptid.voidtimer matches 100 run tellraw @s {"translate":"cryptid.event.void.msg1","color":"red"}

execute if score @s cryptid.voidtimer matches 500 run tellraw @s {"translate":"cryptid.event.void.msg2","color":"red"}

execute if score @s cryptid.voidtimer matches 900 run tellraw @s {"translate":"cryptid.event.void.msg3","color":"red"}

execute if score @s cryptid.voidtimer matches 1200 run tellraw @s {"translate":"cryptid.event.void.msg4","color":"red"}

execute if score @s cryptid.voidtimer matches 1600 run tellraw @s {"translate":"cryptid.event.void.msg5","color":"red"}

execute if score @s cryptid.voidtimer matches 1900 run tellraw @s {"translate":"cryptid.event.void.msg6","color":"red"}

execute if score @s cryptid.voidtimer matches 2100 run effect give @s minecraft:slow_falling 500 0 true

execute if score @s cryptid.voidtimer matches 2100.. run execute in cryptid:below run tp @s ~ 1500 ~

execute if score @s cryptid.voidtimer matches 2100.. run tag @s add cryptid.skipvoidcut