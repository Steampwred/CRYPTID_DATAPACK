particle block{block_state:{Name:redstone_block}} ~ ~ ~ .5 .5 .5 0.4 50
execute if entity @s[type=player] run tellraw @a ["",{"color":"dark_red","selector":"@s[type=player]"},{"color":"dark_red","translate":"chat.cryptid.penalty.disrespect_rules"}]
execute if entity @s[type=player,tag=!cryptid.disc1] run function cryptid:action/give/spawntape
execute if entity @s[type=player,tag=!cryptid.disc1] run tag @s add cryptid.disc1

team join nodeathmessage @s
kill @s
team leave @s
