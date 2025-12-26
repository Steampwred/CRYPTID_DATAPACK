tag @s add ritual.translate

execute positioned ~ ~-1 ~ unless predicate cryptid:checkritual_circle run tellraw @a[distance=..10] {"text":"Ritual Circle Invalid","color":"dark_purple","bold":true}
