tag @s add ritual.translate

execute positioned ~ ~-1 ~ if predicate cryptid:checkritual_circle run tellraw @a[distance=..10] {"translate":"chat.cryptid.ritual_complete","color":"dark_purple","bold":true}