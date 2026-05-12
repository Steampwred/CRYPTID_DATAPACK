tag @s add ritual.translate

execute positioned ~ ~-1 ~ if predicate cryptid:checkritual_circle run tellraw @a[distance=..10] {"text":"Ritual Circle Complete, Initiating","color":"dark_purple","bold":true}
