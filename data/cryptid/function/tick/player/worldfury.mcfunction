##events








###messages

execute if score .global cryptid.world.fury matches 300.. unless score .global cryptid.world.furymessage matches -1000..23712387 run tellraw @a {"translate":"cryptid.event.fury.msg1","color":"red"}
execute if score .global cryptid.world.fury matches 300.. unless score .global cryptid.world.furymessage matches -1000..23712387 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 550.. if score .global cryptid.world.furymessage matches 1 run tellraw @a {"translate":"cryptid.event.fury.msg2","color":"red"}
execute if score .global cryptid.world.fury matches 550.. if score .global cryptid.world.furymessage matches 1 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 800.. if score .global cryptid.world.furymessage matches 2 run tellraw @a {"translate":"cryptid.event.fury.msg3","color":"red"}
execute if score .global cryptid.world.fury matches 800.. if score .global cryptid.world.furymessage matches 2 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 1050.. if score .global cryptid.world.furymessage matches 3 run tellraw @a {"translate":"cryptid.event.fury.msg4","color":"red"}
execute if score .global cryptid.world.fury matches 1050.. if score .global cryptid.world.furymessage matches 3 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 1300.. if score .global cryptid.world.furymessage matches 4 run tellraw @a {"translate":"cryptid.event.fury.msg5","color":"red"}
execute if score .global cryptid.world.fury matches 1300.. if score .global cryptid.world.furymessage matches 4 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 1650.. if score .global cryptid.world.furymessage matches 5 run tellraw @a {"translate":"cryptid.event.fury.msg6","color":"red"}
execute if score .global cryptid.world.fury matches 1650.. if score .global cryptid.world.furymessage matches 5 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 1900.. if score .global cryptid.world.furymessage matches 6 run tellraw @a {"translate":"cryptid.event.fury.msg7","color":"red"}
execute if score .global cryptid.world.fury matches 1900.. if score .global cryptid.world.furymessage matches 6 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 2150.. if score .global cryptid.world.furymessage matches 7 run tellraw @a {"translate":"cryptid.event.fury.msg8","color":"red"}
execute if score .global cryptid.world.fury matches 2150.. if score .global cryptid.world.furymessage matches 7 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 2350.. if score .global cryptid.world.furymessage matches 8 run tellraw @a {"translate":"cryptid.event.fury.msg9","color":"red"}
execute if score .global cryptid.world.fury matches 2350.. if score .global cryptid.world.furymessage matches 8 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 2550.. if score .global cryptid.world.furymessage matches 9 run tellraw @a {"translate":"cryptid.event.fury.msg10","color":"red"}
execute if score .global cryptid.world.fury matches 2550.. if score .global cryptid.world.furymessage matches 9 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 2900.. if score .global cryptid.world.furymessage matches 10 run tellraw @a {"translate":"cryptid.event.fury.msg11","color":"red"}
execute if score .global cryptid.world.fury matches 2900.. if score .global cryptid.world.furymessage matches 10 run scoreboard players add .global cryptid.world.furymessage 1

## Portal logic
execute unless score .global cryptid.world.furymessage matches 11 run return fail
execute unless score .global cryptid.world.fury matches 3000.. run return fail
execute as @a[scores={cryptid.player.id=0}] at @s if entity @n[tag=cryptid.totem2,distance=..200] run return fail
execute as @a[scores={cryptid.player.id=0}] at @s if entity @n[tag=cryptid.lessertotem,distance=..100] run return fail
execute as @a[scores={cryptid.player.id=0}] at @s run function cryptid:action/portal/create