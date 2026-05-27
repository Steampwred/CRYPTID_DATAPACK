##rest score if needed
execute if score @s cryptid.pick.cooldown matches 0 run scoreboard players reset @s cryptid.pick.cooldown
execute if score @s cryptid.item.lantern.cooldown matches 0 run scoreboard players reset @s cryptid.item.lantern.cooldown

##count
execute if score @s cryptid.pick.cooldown matches 1.. run scoreboard players remove @s cryptid.pick.cooldown 1
execute if score @s cryptid.item.lantern.cooldown matches 1.. run scoreboard players remove @s cryptid.item.lantern.cooldown 1
execute if score @s cryptid.athame.cooldown matches 1.. run scoreboard players remove @s cryptid.athame.cooldown 1