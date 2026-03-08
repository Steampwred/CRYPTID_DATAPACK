scoreboard players set @s cryptid.ritualrangecap 100
## Add stability
scoreboard players operation @s cryptid.ritualrangecap += @s cryptid.ritual.stability

tellraw @a[distance=..10] {"text":"Ritual Range Cap: ","color":"dark_purple","bold":true,"extra":[{"score":{"name":"@s","objective":"cryptid.ritualrangecap"},"color":"aqua","bold":false}]}


##set to storage
execute store result storage cryptid:ritual range.x int 1 run scoreboard players get @s cryptid.ritualrangecap

#######generate random with macro 

function cryptid:rituals/random/macrovariable with storage cryptid:ritual range

execute if score @s cryptid.ritual.probability matches ..30 run function cryptid:rituals/result/failure
execute if score @s cryptid.ritual.probability matches 31.. run function cryptid:rituals/result/success
scoreboard players set @s cryptid.timer -100