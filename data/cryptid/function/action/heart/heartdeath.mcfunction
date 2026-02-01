particle block_marker{block_state:{Name:red_concrete}} ~ ~ ~ 0.8 0.8 0.8 0 20
playsound minecraft:cryptid.mob.death ambient @a[distance=..20] ~ ~ ~ 1.5 0.8

place feature cryptid:clearflesh ~ ~ ~ 

execute unless entity @e[type=vindicator,distance=5..40,tag=cryptid.vorheart] if score @p cryptid.player.harmony matches ..0 run scoreboard players set @s cryptid.player.harmony 0 

##increae Fury if Player near 
execute unless entity @p[distance=..6] run return fail 
execute if score .global cryptid.day matches 1..3 run scoreboard players add .global cryptid.world.fury 1 
execute if score .global cryptid.day matches 3..10 run scoreboard players add .global cryptid.world.fury 5 
execute if score .global cryptid.day matches 10.. run scoreboard players add .global cryptid.world.fury 10 
## for when called by other function to remove heart 
kill @s 