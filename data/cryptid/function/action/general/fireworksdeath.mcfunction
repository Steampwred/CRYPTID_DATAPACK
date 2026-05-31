execute if entity @s[tag=cryptid.fireworksdeath] run return fail

tag @s add cryptid
tag @s add cryptid.fireworksdeath
function cryptid:action/general/spawntickmarker {"name":"tickfireworksdeath"}
execute store result score @s cryptid.player.random run random value 1..5

execute if score @s cryptid.player.random matches 1 run scoreboard players set @s cryptid.infestedtimer 10
execute if score @s cryptid.player.random matches 2 run scoreboard players set @s cryptid.infestedtimer 20
execute if score @s cryptid.player.random matches 3 run scoreboard players set @s cryptid.infestedtimer 40
execute if score @s cryptid.player.random matches 4 run scoreboard players set @s cryptid.infestedtimer 0
execute if score @s cryptid.player.random matches 5 run scoreboard players set @s cryptid.infestedtimer 66