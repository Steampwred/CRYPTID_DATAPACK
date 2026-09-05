execute positioned ~ ~-4 ~ if predicate cryptid:alter/voidtotem if items entity @e[distance=..8,tag=sacrifice.item,type=item] contents totem_of_undying run tag @s add ritual.requirmentmet
#function cryptid:rituals/result/rewardevent/voidtotem

execute if entity @s[tag=ritual.translate,tag=!ritual.failure] run tellraw @a[distance=..15] {"translate":"chat.cryptid.ritual_codename","color":"dark_purple","bold":true,"with":[{"translate":"chat.cryptid.ritual_codename.void_totem"}]}

#execute positioned ~ ~-4 ~ if predicate cryptid:alter/voidtotem if entity @e[distance=..8,tag=sacrifice.mob,limit=2,type=sheep] run tag @s add ritual.requirmentmet