execute positioned ~ ~-4 ~ if predicate cryptid:alter/axe if items entity @e[distance=..8,tag=sacrifice.item,type=item] contents iron_axe run tag @s add ritual.requirmentmet

execute if entity @s[tag=ritual.translate] run tellraw @a[distance=..15] {"translate":"chat.cryptid.ritual_codename","color":"dark_purple","bold":true,"with":[{"translate":"chat.cryptid.ritual_codename.steel_suffering"}]}