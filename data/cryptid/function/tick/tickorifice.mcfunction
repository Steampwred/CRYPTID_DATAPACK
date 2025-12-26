#execute store result score @s cryptid.player.random run random value 1..20000

##init
execute if entity @s[tag=!init] run scoreboard players set @s cryptid.timer 0
execute if entity @s[tag=!init] run tag @s add init

# Spawn and Idle
execute if score @s cryptid.timer matches -20..0 run tp @s ~ ~0.2 ~ facing entity @p
execute if score @s cryptid.timer matches -40..-20 run tp @s ~ ~0.05 ~ facing entity @p
execute if score @s cryptid.timer matches ..-40 run tp @s ~ ~ ~ facing entity @p

# Check cardinal and ordinal directions for ritual
execute if score @s cryptid.timer matches 100 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 90 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 80 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 70 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 60 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 50 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 40 run function cryptid:rituals/initial/checkfocus
execute if score @s cryptid.timer matches 30 run function cryptid:rituals/initial/checkfocus

# Alter Type
execute if score @s cryptid.timer matches 20 run function cryptid:rituals/initial/checkalter


execute if score @s[tag=ritual.translate] cryptid.timer matches 10 run tellraw @a[distance=..10] {"text":"Ritual Stability: ","color":"dark_purple","bold":true,"extra":[{"score":{"name":"@s","objective":"cryptid.ritual.stability"},"color":"aqua","bold":false}]}
execute if score @s cryptid.timer matches 1 run kill @s

######### Timer
execute if score @s cryptid.timer matches -40.. run scoreboard players remove @s cryptid.timer 1