execute unless predicate cryptid:checkriding2 run tag @s add remove
execute unless entity @s[tag=remove] run return fail

execute if score @s cryptid.anitimer matches 5.. run tp @s ~ ~-0.3 ~
execute if score @s cryptid.anitimer matches 10.. run tp @s ~ ~-0.8 ~
execute if score @s cryptid.anitimer matches 15.. run tp @s ~ ~-1.2 ~

scoreboard players add @s cryptid.anitimer 1
execute if score @s cryptid.anitimer matches 30.. run kill @s