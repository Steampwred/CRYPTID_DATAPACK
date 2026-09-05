team join nodeathmessage @s


execute store result score @s cryptid.player.random run random value 1..12


execute if score @s cryptid.player.random matches 1 run tellraw @a [{"translate":"cryptid.death.msg_1","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 2 run tellraw @a [{"translate":"cryptid.death.msg_2","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 3 run tellraw @a [{"translate":"cryptid.death.msg_3","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 4 run tellraw @a [{"translate":"cryptid.death.msg_4","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 5 run tellraw @a [{"translate":"cryptid.death.msg_5","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 6 run tellraw @a [{"translate":"cryptid.death.msg_6","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 7 run tellraw @a [{"translate":"cryptid.death.msg_7","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 8 run tellraw @a [{"translate":"cryptid.death.msg_8","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 9 run tellraw @a [{"translate":"cryptid.death.msg_9","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 10 run tellraw @a [{"translate":"cryptid.death.msg_10","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 11 run tellraw @a [{"translate":"cryptid.death.msg_11","with":[{"selector":"@s"}],"color":"dark_red"}]
execute if score @s cryptid.player.random matches 12 run tellraw @a [{"translate":"cryptid.death.msg_12","with":[{"selector":"@s"}],"color":"dark_red"}]


kill @s[gamemode=!spectator]
team leave @s
tp @s[gamemode=!spectator] ~ ~300 ~