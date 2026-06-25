scoreboard players set @s cryptid.timer 20

playsound minecraft:cryptid.trap.hit ambient @a[distance=0..10] ~ ~ ~ 1 0.9
playsound minecraft:item.crossbow.loading_end ambient @a ~ ~ ~ 1 0.6
item replace entity @s armor.head with potion[minecraft:custom_model_data=1367]
particle minecraft:soul ~ ~ ~ 0.3 0.3 0.3 0.01 10
damage @n[distance=0.2..1,type=!armor_stand,type=!item,type=!experience_orb,type=!marker,tag=!trap.trapped,tag=!cryptid] 5 cryptid:cryptid by @s
effect give @n[distance=0.2..1,type=!armor_stand,type=!item,type=!experience_orb,type=!marker,tag=!trap.trapped] minecraft:wither 5 1 true
tag @n[distance=0.2..1,type=!armor_stand,type=!item,type=!experience_orb,type=!marker,tag=!trap.trapped] add trap.trapped
tag @s add activated
