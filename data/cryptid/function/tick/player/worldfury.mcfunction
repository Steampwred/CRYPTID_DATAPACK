##events








###messages

execute if score .global cryptid.world.fury matches 300.. unless score .global cryptid.world.furymessage matches -1000..23712387 run tellraw @a {"text":"<???> Why do you torture us?","color":"red"}
execute if score .global cryptid.world.fury matches 300.. unless score .global cryptid.world.furymessage matches -1000..23712387 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 550.. if score .global cryptid.world.furymessage matches 1 run tellraw @a {"text":"<???> The pain you cause will be inflicted onto you.","color":"red"}
execute if score .global cryptid.world.fury matches 550.. if score .global cryptid.world.furymessage matches 1 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 800.. if score .global cryptid.world.furymessage matches 2 run tellraw @a {"text":"<???> You are not the first to do this, and you will not be the last.","color":"red"}
execute if score .global cryptid.world.fury matches 800.. if score .global cryptid.world.furymessage matches 2 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 1050.. if score .global cryptid.world.furymessage matches 3 run tellraw @a {"text":"<???> You have disturbed our sanctuary, and ignore our warnings.","color":"red"}
execute if score .global cryptid.world.fury matches 1050.. if score .global cryptid.world.furymessage matches 3 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 1300.. if score .global cryptid.world.furymessage matches 4 run tellraw @a {"text":"<???> What you see is a small fraction of what will come.","color":"red"}
execute if score .global cryptid.world.fury matches 1300.. if score .global cryptid.world.furymessage matches 4 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 1650.. if score .global cryptid.world.furymessage matches 5 run tellraw @a {"text":"<???> Under the bedrock, is where our HOST lies","color":"red"}
execute if score .global cryptid.world.fury matches 1650.. if score .global cryptid.world.furymessage matches 5 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 1900.. if score .global cryptid.world.furymessage matches 6 run tellraw @a {"text":"<???> We tried to build a better world, a perfect world ","color":"red"}
execute if score .global cryptid.world.fury matches 1900.. if score .global cryptid.world.furymessage matches 6 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 2150.. if score .global cryptid.world.furymessage matches 7 run tellraw @a {"text":"<???> But you had to come along. And ruin it.","color":"red"}
execute if score .global cryptid.world.fury matches 2150.. if score .global cryptid.world.furymessage matches 7 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 2350.. if score .global cryptid.world.furymessage matches 8 run tellraw @a {"text":"<???> Only a little while longer, now. ","color":"red"}
execute if score .global cryptid.world.fury matches 2350.. if score .global cryptid.world.furymessage matches 8 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 2550.. if score .global cryptid.world.furymessage matches 9 run tellraw @a {"text":"<???> This was your choice.","color":"red"}
execute if score .global cryptid.world.fury matches 2550.. if score .global cryptid.world.furymessage matches 9 run scoreboard players add .global cryptid.world.furymessage 1

execute if score .global cryptid.world.fury matches 2900.. if score .global cryptid.world.furymessage matches 10 run tellraw @a {"text":"<???> And this will be your tomb.","color":"red"}
execute if score .global cryptid.world.fury matches 2900.. if score .global cryptid.world.furymessage matches 10 run scoreboard players add .global cryptid.world.furymessage 1

## Portal logic
execute unless score .global cryptid.world.furymessage matches 11 run return fail
execute unless score .global cryptid.world.fury matches 3000.. run return fail
execute as @a[scores={cryptid.player.id=0}] at @s if entity @n[tag=cryptid.totem2,distance=..200] run return fail
execute as @a[scores={cryptid.player.id=0}] at @s if entity @n[tag=cryptid.lessertotem,distance=..100] run return fail
execute as @a[scores={cryptid.player.id=0}] at @s run function cryptid:action/portal/create


