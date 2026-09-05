scoreboard players reset @s cryptid.trigger.donatelife
scoreboard players enable @s cryptid.trigger.donatelife
execute if score @s cryptid.maxlives matches ..1 run return fail
execute unless entity @a[scores={cryptid.maxlives=..0}] run return fail


scoreboard players remove @s cryptid.maxlives 1
tellraw @s ["",{"translate":"chat.cryptid.donate_life.minus","color":"dark_gray","bold":true}]
tag @r[scores={cryptid.maxlives=..1}] add thisit

scoreboard players add @a[tag=thisit] cryptid.maxlives 1
tp @a[tag=thisit] @s
tag @a remove thisit