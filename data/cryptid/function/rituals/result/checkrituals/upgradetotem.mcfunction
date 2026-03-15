execute positioned ~ ~-4 ~ if predicate cryptid:alter/upgradetotem if items entity @e[distance=..8,tag=sacrifice.item,type=item] contents villager_spawn_egg[minecraft:custom_data~{cryptid.item:1b}] run tag @s add ritual.requirmentmet
execute positioned ~ ~-4 ~ if predicate cryptid:alter/upgradetotem if entity @e[distance=..8,tag=sacrifice.mob,tag=cryptid.lessertotem] run tag @s add ritual.requirmentmet


execute if entity @s[tag=ritual.translate] run tellraw @a[distance=..15] {"text":"Ritual Codename:","color":"dark_purple","bold":true,"extra":[{"text":" UPGRADE TOTEM","color":"aqua","bold":false}]}
