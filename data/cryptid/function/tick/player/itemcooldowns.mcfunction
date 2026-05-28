##rest score if needed
execute if score @s cryptid.pick.cooldown matches 0 run scoreboard players reset @s cryptid.pick.cooldown
execute if score @s cryptid.item.lantern.cooldown matches 0 run scoreboard players reset @s cryptid.item.lantern.cooldown
execute if score @s cryptid.shotgun.cooldown matches 0 run scoreboard players reset @s cryptid.shotgun.cooldown


##count
execute if score @s cryptid.pick.cooldown matches 1.. run scoreboard players remove @s cryptid.pick.cooldown 1
execute if score @s cryptid.item.lantern.cooldown matches 1.. run scoreboard players remove @s cryptid.item.lantern.cooldown 1
execute if score @s cryptid.shotgun.cooldown matches 1.. run scoreboard players remove @s cryptid.shotgun.cooldown 1
execute if score @s cryptid.athame.cooldown matches 1.. run scoreboard players remove @s cryptid.athame.cooldown 1

## becuase sound file plays lateeeee
execute if score @s cryptid.shotgun.cooldown matches 10 run playsound minecraft:cryptid.shotreload ambient @a[distance=0..4] ~ ~ ~ 1 0.8
