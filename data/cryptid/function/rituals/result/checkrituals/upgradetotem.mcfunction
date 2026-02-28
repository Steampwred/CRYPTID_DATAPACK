execute positioned ~ ~-4 ~ if predicate cryptid:alter/upgradetotem if items entity @e[distance=..8,tag=sacrifice.item,type=item] contents sugar[minecraft:custom_data~{cryptid.heartfrag:1b},count={min:4}] run tag @s add ritual.requirmentmet

execute if entity @s[tag=ritual.translate] run tellraw @a[distance=..15] {"text":"Ritual Codename:","color":"dark_purple","bold":true,"extra":[{"text":" UPGRADE TOTEM","color":"aqua","bold":false}]}
