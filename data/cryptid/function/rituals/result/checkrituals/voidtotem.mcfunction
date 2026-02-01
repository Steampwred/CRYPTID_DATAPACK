execute positioned ~ ~-4 ~ if predicate cryptid:alter/voidtotem if items entity @e[distance=..8,tag=sacrifice.item,type=item] contents totem_of_undying run tag @s add ritual.requirmentmet
#function cryptid:rituals/result/rewardevent/voidtotem

execute if entity @s[tag=ritual.translate] run tellraw @a[distance=..15] {"text":"Ritual Codename:","color":"dark_purple","bold":true,"extra":[{"text":" VOID TOTEM","color":"aqua","bold":false}]}

#execute positioned ~ ~-4 ~ if predicate cryptid:alter/voidtotem if entity @e[distance=..8,tag=sacrifice.mob,limit=2,type=sheep] run tag @s add ritual.requirmentmet
